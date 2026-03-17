class Redisctl < Formula
  desc "CLI for Redis Cloud and Enterprise management"
  homepage "https://github.com/redis-developer/redisctl"
  version "0.10.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/redis-developer/redisctl/releases/download/redisctl-v0.10.0/redisctl-aarch64-apple-darwin.tar.xz"
      sha256 "31ffd65b70b0a70513e99313350c125a8ae745f1ae0b8b338c54a89f2a2fde7b"
    end
    on_intel do
      url "https://github.com/redis-developer/redisctl/releases/download/redisctl-v0.10.0/redisctl-x86_64-apple-darwin.tar.xz"
      sha256 "8cc9591cb395decd7b61a1a6f3cccb51bf409bdbe371c55b80cba706ce59b7fd"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/redis-developer/redisctl/releases/download/redisctl-v0.10.0/redisctl-x86_64-unknown-linux-gnu.tar.xz"
      sha256 "18aeb7fac8d2e0852116e2b9d1aecf1be3c7748847f4e8318c377cdd61c735a7"
    end
  end

  def install
    bin.install "redisctl"
  end

  test do
    assert_match "redisctl", shell_output("#{bin}/redisctl --version")
  end
end
