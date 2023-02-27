class Zine < Formula
  desc "Simple and opinionated tool to build your own magazine"
  homepage "https://github.com/zineland/zine"
  version "0.11.1"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/zineland/zine/releases/download/v0.11.1/zine-x86_64-apple-darwin.tar.gz"
    sha256 "8bb9c7f347e8f3701f858f288cff7bff6b985e0b2868be88f17ee839da541f46"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/zineland/zine/releases/download/v0.11.1/zine-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "23ceb0bffe6a624e5c98615d5755046b562b39da076ec04c4a41400fc34bb519"
  end

  def install
    bin.install "zine"
  end

  test do
    system "#{bin}/zine"
  end
end
