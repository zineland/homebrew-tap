class Zine < Formula
  desc "Simple and opinionated tool to build your own magazine"
  homepage "https://github.com/zineland/zine"
  version "0.12.0"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/zineland/zine/releases/download/v0.12.0/zine-x86_64-apple-darwin.tar.gz"
    sha256 "dfe653dc216d24d6d40f850e5968e9c48b655db1064a253fad6a0ca0e18fa0b2"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/zineland/zine/releases/download/v0.12.0/zine-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "80dde85c7771088fc745ef5314f82e9d4341b03f4a2901b03f59fdbdba29fdf9"
  end

  def install
    bin.install "zine"
  end

  test do
    system "#{bin}/zine"
  end
end
