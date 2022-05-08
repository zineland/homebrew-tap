class Zine < Formula
  desc "Simple and opinionated tool to build your own magazine"
  homepage "https://github.com/zineland/zine"
  url "https://github.com/zineland/zine/releases/download/v0.4.0/zine-macos-amd64"
  version "0.4.0"
  sha256 "216724d4a50ea2033cfa980311ee00cb4f881246639a2a70c8881688cfe9516b"

  def install
    bin.install "zine"
  end
end
