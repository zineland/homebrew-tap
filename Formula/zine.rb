class Zine < Formula
  desc "Simple and opinionated tool to build your own magazine"
  homepage "https://github.com/zineland/zine"
  version "0.11.0"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/zineland/zine/releases/download/v0.11.0/zine-x86_64-apple-darwin.tar.gz"
    sha256 "c15789e1904e61c155b74ce3d58d5179ddec01964fcd6792cb4dbb7c6d613883"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/zineland/zine/releases/download/v0.11.0/zine-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "529a5fc39b4940e30347555edbb6fc5e64ffb376155f8c5703cc79e6c228f47b"
  end

  def install
    bin.install "zine"
  end

  test do
    system "#{bin}/zine"
  end
end
