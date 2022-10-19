class Zine < Formula
  desc "Simple and opinionated tool to build your own magazine"
  homepage "https://github.com/zineland/zine"
  version "0.7.0"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/zineland/zine/releases/download/v0.7.0/zine-x86_64-apple-darwin.tar.gz"
    sha256 "551eeec8ecf42f46675c25e287a3ae3dc4409be00a162a59d6531eb6dd480f5f"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/zineland/zine/releases/download/v0.7.0/zine-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "8f32aac2fa80da518f5a038e0fefff6f084593d1e0bd5eb2855501a282d759a2"
  end

  def install
    bin.install "zine"
  end

  test do
    system "#{bin}/zine"
  end
end
