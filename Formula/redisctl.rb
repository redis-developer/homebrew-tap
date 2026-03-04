class Redisctl < Formula
  desc "CLI for Redis Cloud and Enterprise management"
  homepage "https://github.com/redis-developer/redisctl"
  version "0.8.2"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/redis-developer/redisctl/releases/download/redisctl-v0.8.2/redisctl-aarch64-apple-darwin.tar.xz"
      sha256 "75cfd895bd7beebb9292a3004ecbd290336cecc7b4a7049a94b0b2582bb4f4b3"
    end
    on_intel do
      url "https://github.com/redis-developer/redisctl/releases/download/redisctl-v0.8.2/redisctl-x86_64-apple-darwin.tar.xz"
      sha256 "1d0f070bf3c7ba3b02eb32f7f22b32c73973a31c2cf3646c333e04e5a0a99f19"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/redis-developer/redisctl/releases/download/redisctl-v0.8.2/redisctl-x86_64-unknown-linux-gnu.tar.xz"
      sha256 "2468e3927144c9ac70cd68e73752d810b028770706da8be53a1523c3869266f4"
    end
  end

  def install
    bin.install "redisctl"
  end

  test do
    assert_match "redisctl", shell_output("#{bin}/redisctl --version")
  end
end
