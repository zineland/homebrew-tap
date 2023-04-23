class Zine < Formula
  desc "Simple and opinionated tool to build your own magazine"
  homepage "https://github.com/zineland/zine"
  version "0.14.0"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/zineland/zine/releases/download/v0.14.0/zine-x86_64-apple-darwin.tar.gz"
    sha256 "5c685331ede3bbf73e235f63c8e2ab3cd17d446b9235bcfb1d62cfdbf53dd7b0"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/zineland/zine/releases/download/v0.14.0/zine-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "ff5fea04c257db24ff6512749e50b6896ff2037180f6c2959793c3cd52e56a24"
  end

  def install
    bin.install "zine"
  end

  test do
    system "#{bin}/zine"
  end
end
