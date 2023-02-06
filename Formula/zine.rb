class Zine < Formula
  desc "Simple and opinionated tool to build your own magazine"
  homepage "https://github.com/zineland/zine"
  version "0.10.1"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/zineland/zine/releases/download/v0.10.1/zine-x86_64-apple-darwin.tar.gz"
    sha256 "6e7def76d9ec228924c8513edfb8025e761684408d303d0eecf67284bf304ead"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/zineland/zine/releases/download/v0.10.1/zine-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "6d7fdb4c8c570abb82cde9006c8cc59aaf8f20b3ad991c3d76d79f29942fbf75"
  end

  def install
    bin.install "zine"
  end

  test do
    system "#{bin}/zine"
  end
end
