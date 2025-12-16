class Redisctl < Formula
  desc "CLI for Redis Cloud and Enterprise management"
  homepage "https://github.com/redis-developer/redisctl"
  version "0.7.1"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/redis-developer/redisctl/releases/download/redisctl-v0.7.1/redisctl-aarch64-apple-darwin.tar.xz"
      sha256 "ec6ee9eee1656d3315055bd3b1fff11607598915e7cc4213687b9ba9cb372063"
    end
    on_intel do
      url "https://github.com/redis-developer/redisctl/releases/download/redisctl-v0.7.1/redisctl-x86_64-apple-darwin.tar.xz"
      sha256 "b181d3b80648a3394f425759b0dfc8a2402ac83bdc789e22fd418f333ba1324f"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/redis-developer/redisctl/releases/download/redisctl-v0.7.1/redisctl-x86_64-unknown-linux-gnu.tar.xz"
      sha256 "26220b1c61c6ba1bec021533b4a14f8c153a52195a2e9fe1c6b047e3dfd575bb"
    end
  end

  def install
    bin.install "redisctl"
  end

  test do
    assert_match "redisctl", shell_output("#{bin}/redisctl --version")
  end
end
