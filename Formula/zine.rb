class Zine < Formula
  desc "Simple and opinionated tool to build your own magazine"
  homepage "https://github.com/zineland/zine"
  version "0.12.1"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/zineland/zine/releases/download/v0.12.1/zine-x86_64-apple-darwin.tar.gz"
    sha256 "a153a000bb82a268bd24d5fb872748078ee2f40122aae4a4a5173839295b4cf0"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/zineland/zine/releases/download/v0.12.1/zine-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "8b234731d62e64f982a2b7a321b2af100be2e145e8a1582856e52953ace2e31d"
  end

  def install
    bin.install "zine"
  end

  test do
    system "#{bin}/zine"
  end
end
