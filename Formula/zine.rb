class Zine < Formula
  desc "Simple and opinionated tool to build your own magazine"
  homepage "https://github.com/zineland/zine"
  version "0.5.0"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/zineland/zine/releases/download/v0.5.0/zine-x86_64-apple-darwin.tar.gz"
    sha256 "5ee565d574c7e5d0409de2d1581ae17f13d0c0d5d408729b47a3bc0a58f0c919"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/zineland/zine/releases/download/v0.5.0/zine-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "15d33f102feda6ec32da94f14165ff120278cc5bc56821007c1e5549aef0367d"
  end

  def install
    bin.install "zine"
  end

  test do
    system "#{bin}/zine"
  end
end
