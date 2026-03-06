class Redisctl < Formula
  desc "CLI for Redis Cloud and Enterprise management"
  homepage "https://github.com/redis-developer/redisctl"
  version "0.8.3"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/redis-developer/redisctl/releases/download/redisctl-v0.8.3/redisctl-aarch64-apple-darwin.tar.xz"
      sha256 "da0795a703aa05c119ddfb3924acb5bf872fa461be6806fe3e004c49a9b4abdd"
    end
    on_intel do
      url "https://github.com/redis-developer/redisctl/releases/download/redisctl-v0.8.3/redisctl-x86_64-apple-darwin.tar.xz"
      sha256 "a3dc9296cc37b3e868627a849ebb5166edb05c84606876b9df1a0fa49c5aa5db"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/redis-developer/redisctl/releases/download/redisctl-v0.8.3/redisctl-x86_64-unknown-linux-gnu.tar.xz"
      sha256 "e12fee0c583c2aa8e2737e7c157b4f3af1e6e3c10020fbe0ea242227a4156797"
    end
  end

  def install
    bin.install "redisctl"
  end

  test do
    assert_match "redisctl", shell_output("#{bin}/redisctl --version")
  end
end
