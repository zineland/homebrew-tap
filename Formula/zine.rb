class Zine < Formula
  desc "Simple and opinionated tool to build your own magazine"
  homepage "https://github.com/zineland/zine"
  version "0.8.1"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/zineland/zine/releases/download/v0.8.1/zine-x86_64-apple-darwin.tar.gz"
    sha256 "d7d02b0ba5f9bcc8cfcd0bcb9a0ce22b43e8f9950b23788ef02eabdcd30fd5ad"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/zineland/zine/releases/download/v0.8.1/zine-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "e65d6c34e85eda5045f6ac561d0a48e1e2d2c09a9a9ce20a658ec92bd78b568a"
  end

  def install
    bin.install "zine"
  end

  test do
    system "#{bin}/zine"
  end
end
