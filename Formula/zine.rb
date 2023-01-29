class Zine < Formula
  desc "Simple and opinionated tool to build your own magazine"
  homepage "https://github.com/zineland/zine"
  version "0.10.0"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/zineland/zine/releases/download/v0.10.0/zine-x86_64-apple-darwin.tar.gz"
    sha256 "b6150fcd6266be8efa36356684ac41419847a8ecfe056cf6e235b7b84e4eb8fe"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/zineland/zine/releases/download/v0.10.0/zine-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "e70df032335596b69c40a7f812856ab0f9eb5676322fb2af8c4ea26b38d0d9f0"
  end

  def install
    bin.install "zine"
  end

  test do
    system "#{bin}/zine"
  end
end
