class Zine < Formula
  desc "Simple and opinionated tool to build your own magazine"
  homepage "https://github.com/zineland/zine"
  version "0.15.0"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/zineland/zine/releases/download/v0.15.0/zine-x86_64-apple-darwin.tar.gz"
    sha256 "2be91a53a30e5c0137d8b00c44206a675611f3b61b58d52af0d14dac4f11a81b"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/zineland/zine/releases/download/v0.15.0/zine-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "344274373b2813611fd66bdc7b1986dbd1ffcc0072b795da664ee5ade07d82e1"
  end

  def install
    bin.install "zine"
  end

  test do
    system "#{bin}/zine"
  end
end
