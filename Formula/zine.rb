class Zine < Formula
  desc "Simple and opinionated tool to build your own magazine"
  homepage "https://github.com/zineland/zine"
  version "0.9.0"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/zineland/zine/releases/download/v0.9.0/zine-x86_64-apple-darwin.tar.gz"
    sha256 "fb5f4bc6d75178d24749551f45c7740b790c102a2b9a1c49386f0608c0826b3b"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/zineland/zine/releases/download/v0.9.0/zine-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "1380d9ba32444bfed633af881d5abaa1b33af79bccdd979c2a2a1eebdd9ba1b6"
  end

  def install
    bin.install "zine"
  end

  test do
    system "#{bin}/zine"
  end
end
