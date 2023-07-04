class Zine < Formula
  desc "Simple and opinionated tool to build your own magazine"
  homepage "https://github.com/zineland/zine"
  version "0.16.0"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/zineland/zine/releases/download/v0.16.0/zine-x86_64-apple-darwin.tar.gz"
    sha256 "fa92027d799d3e48cf05b1949794f5634f9659a0e9f2e8c8cb8479f4af88bc8c"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/zineland/zine/releases/download/v0.16.0/zine-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "e404ace55ff2e1ea6de643efcdd026f1c2282c84bee02e60e38ca35c608c6115"
  end

  def install
    bin.install "zine"
  end

  test do
    system "#{bin}/zine"
  end
end
