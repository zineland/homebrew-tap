import sys
import requests
import hashlib

DOWNLOAD_URL = "https://github.com/zineland/zine/releases/download/v{version}/{artifact}"
TAP_FORMULA_TEMPATE = """class Zine < Formula
  desc "Simple and opinionated tool to build your own magazine"
  homepage "https://github.com/zineland/zine"
  version "{version}"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/zineland/zine/releases/download/v{version}/zine-x86_64-apple-darwin.tar.gz"
    sha256 "{mac_sha256}"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/zineland/zine/releases/download/v{version}/zine-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "{linux_sha256}"
  end

  def install
    bin.install "zine"
  end

  test do
    system "#{{bin}}/zine"
  end
end
"""


def download_and_check_sha256(url: str) -> str:
    r = requests.get(url)
    if r.status_code == 200:
        sha256 = hashlib.sha256(r.content).hexdigest()
        return sha256
    else:
        print(f"download faild: {r.text}")
        raise Exception("Download failed: ", url)


def get_download_urls(version: str) -> dict:
    return {
        "mac": DOWNLOAD_URL.format(
            version=version, artifact="zine-x86_64-apple-darwin.tar.gz"),
        "linux": DOWNLOAD_URL.format(
            version=version, artifact="zine-x86_64-unknown-linux-gnu.tar.gz"),
    }


if __name__ == "__main__":
    if len(sys.argv) < 2:
        print("version argument required")
        sys.exit()

    print("Start generate latest formula file...")
    version = sys.argv[1].strip('v')
    print('version: ', version)

    shasums = {}
    for os, url in get_download_urls(version).items():
        sha256 = download_and_check_sha256(url)
        shasums[os] = sha256

    formula = TAP_FORMULA_TEMPATE.format(
        version=version, mac_sha256=shasums["mac"], linux_sha256=shasums["linux"])
    print(formula)
    with open("Formula/zine.rb", "w") as file:
        file.write(formula)
        print("Generate success!")
