class Zine < Formula
  desc "Simple and opinionated tool to build your own magazine"
  homepage "https://github.com/zineland/zine"
  version "0.13.0"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/zineland/zine/releases/download/v0.13.0/zine-x86_64-apple-darwin.tar.gz"
    sha256 "f354971fc27de64497825630b51501fc83aa07f3b55bd761a7f961db2e2f939f"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/zineland/zine/releases/download/v0.13.0/zine-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "4f56b71edc2c3949c1be281e265b4db0d2e2868f24eba438a0ff1c00fa45bec5"
  end

  def install
    bin.install "zine"
  end

  test do
    system "#{bin}/zine"
  end
end
