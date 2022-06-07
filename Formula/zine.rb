class Zine < Formula
  desc "Simple and opinionated tool to build your own magazine"
  homepage "https://github.com/zineland/zine"
  version "0.6.0"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/zineland/zine/releases/download/v0.6.0/zine-x86_64-apple-darwin.tar.gz"
    sha256 "197dba85fa5792eb7bb1303e82c22b638fe14c766a247b1f7963973ed1cab3bb"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/zineland/zine/releases/download/v0.6.0/zine-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "1eb1ef68f9bcc35d9a33d4cfdc7bb482690f24f816276963cafc5015dc934cb8"
  end

  def install
    bin.install "zine"
  end

  test do
    system "#{bin}/zine"
  end
end
