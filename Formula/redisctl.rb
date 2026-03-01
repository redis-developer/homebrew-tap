class Redisctl < Formula
  desc "CLI for Redis Cloud and Enterprise management"
  homepage "https://github.com/redis-developer/redisctl"
  version "0.8.1"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/redis-developer/redisctl/releases/download/redisctl-v0.8.1/redisctl-x86_64-apple-darwin.tar.xz"
      sha256 "0eeb4b273c53e480a0d27a1ff1cdfa1b28d34260c7f3b565298cb96f7ba41e40"
    end
    on_intel do
      url "https://github.com/redis-developer/redisctl/releases/download/redisctl-v0.7.2/redisctl-x86_64-apple-darwin.tar.xz"
      sha256 "59ef5575dafc88d5c0507fc4eff80589ac93e23e1e627e28058db643e8caf5ef"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/redis-developer/redisctl/releases/download/redisctl-v0.7.2/redisctl-x86_64-unknown-linux-gnu.tar.xz"
      sha256 "933f0c13092de638375cc8f50b89ed1aa3f0d7ec24bf23bf87d30fb3d87456e8"
    end
  end

  def install
    bin.install "redisctl"
  end

  test do
    assert_match "redisctl", shell_output("#{bin}/redisctl --version")
  end
end
