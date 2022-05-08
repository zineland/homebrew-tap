class Zine < Formula
  desc "Simple and opinionated tool to build your own magazine"
  homepage "https://github.com/zineland/zine"
  version "0.4.0"
  
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/zineland/zine/releases/download/v0.4.0/zine-macos-amd64"
    sha256 "216724d4a50ea2033cfa980311ee00cb4f881246639a2a70c8881688cfe9516b"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/zineland/zine/releases/download/v0.4.0/zine-linux-amd64"
    sha256 "aef942b301f1bff9430aadf8b9d59d985664cee869bfb110a1d555ce41f0c701"
  end

  def install
    bin.install "zine"
  end

  test do
    system "#{bin}/zine"
  end
end
