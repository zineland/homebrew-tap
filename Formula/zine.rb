class Zine < Formula
  desc "Simple and opinionated tool to build your own magazine"
  homepage "https://github.com/zineland/zine"
  version "0.4.0"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/zineland/zine/releases/download/v0.4.1/zine-x86_64-apple-darwin.tar.gz"
    sha256 "e5844441768bd37bfdcf686f3d351574bc4cfe6176477f823f2a7dbaae2abc80"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/zineland/zine/releases/download/v0.4.1/zine-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "aef942b301f1bff9430aadf8b9d59d985664cee869bfb110a1d555ce41f0c701"
  end

  def install
    bin.install "zine"
  end

  test do
    system "#{bin}/zine"
  end
end
