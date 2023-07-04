class Zine < Formula
  desc "Simple and opinionated tool to build your own magazine"
  homepage "https://github.com/zineland/zine"
  version "0.16.0"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/zineland/zine/releases/download/v0.16.0/zine-x86_64-apple-darwin.tar.gz"
    sha256 "9e3000fe5f6801598df5d18bda64d009983251ce3e6fbe29424c3b8fb0b45286"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/zineland/zine/releases/download/v0.16.0/zine-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "86414adbb46a6867014078a63f5bd6331f86d073a94998f352d2e82d742dd963"
  end

  def install
    bin.install "zine"
  end

  test do
    system "#{bin}/zine"
  end
end
