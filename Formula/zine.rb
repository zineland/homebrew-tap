class Zine < Formula
  desc "Simple and opinionated tool to build your own magazine"
  homepage "https://github.com/zineland/zine"
  version "0.8.0"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/zineland/zine/releases/download/v0.8.0/zine-x86_64-apple-darwin.tar.gz"
    sha256 "8364e96828b8acd7b75b2b5c2ef94ef7da1d378ead5979c086559a7c3ff7677d"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/zineland/zine/releases/download/v0.8.0/zine-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "a7f0890bd49a9aad16cf1b8ad226212390b1ebb01f8f0cef7ff92f9f9c862c42"
  end

  def install
    bin.install "zine"
  end

  test do
    system "#{bin}/zine"
  end
end
