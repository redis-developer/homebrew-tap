class Redisctl < Formula
  desc "CLI for Redis Cloud and Enterprise management"
  homepage "https://github.com/redis-developer/redisctl"
  version "0.9.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/redis-developer/redisctl/releases/download/redisctl-v0.9.0/redisctl-aarch64-apple-darwin.tar.xz"
      sha256 "82990486ddb662b5d5cc282088beaf802133ec5b07fe037f91199c64c123e326"
    end
    on_intel do
      url "https://github.com/redis-developer/redisctl/releases/download/redisctl-v0.9.0/redisctl-x86_64-apple-darwin.tar.xz"
      sha256 "ea64810f636968d62924147cab20747bb9b26988860386f7b1c604abd79f5da1"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/redis-developer/redisctl/releases/download/redisctl-v0.9.0/redisctl-x86_64-unknown-linux-gnu.tar.xz"
      sha256 "389e415d1903e64395e15af3707f2ced10a7c94dd957c7966ed04b3fad0f47c0"
    end
  end

  def install
    bin.install "redisctl"
  end

  test do
    assert_match "redisctl", shell_output("#{bin}/redisctl --version")
  end
end
