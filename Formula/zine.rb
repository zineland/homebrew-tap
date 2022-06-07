class Zine < Formula
  desc "Simple and opinionated tool to build your own magazine"
  homepage "https://github.com/zineland/zine"
  version "v0.6.0"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/zineland/zine/releases/download/vv0.6.0/zine-x86_64-apple-darwin.tar.gz"
    sha256 "None"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/zineland/zine/releases/download/vv0.6.0/zine-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "None"
  end

  def install
    bin.install "zine"
  end

  test do
    system "#{bin}/zine"
  end
end
