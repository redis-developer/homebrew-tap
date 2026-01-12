class Redisctl < Formula
  desc "CLI for Redis Cloud and Enterprise management"
  homepage "https://github.com/redis-developer/redisctl"
  version "0.7.4"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/redis-developer/redisctl/releases/download/redisctl-v0.7.4/redisctl-x86_64-apple-darwin.tar.xz"
      sha256 "c88b6ee2b7c768e2c55a57f819cf8527d9ce2dbe6e00541ecfb6a6e39b5e3b9a"
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
