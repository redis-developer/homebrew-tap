class Redisctl < Formula
  desc "CLI for Redis Cloud and Enterprise management"
  homepage "https://github.com/redis-developer/redisctl"
  version "0.9.1"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/redis-developer/redisctl/releases/download/redisctl-v0.9.1/redisctl-aarch64-apple-darwin.tar.xz"
      sha256 "a0757289383d218a41477dc2b9e390cf2c9343a3550fb833226aa72df819523c"
    end
    on_intel do
      url "https://github.com/redis-developer/redisctl/releases/download/redisctl-v0.9.1/redisctl-x86_64-apple-darwin.tar.xz"
      sha256 "222a08f81c87470d506d9e5514568bbaec5b8d3445ff0c13bf4a470226fcc36d"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/redis-developer/redisctl/releases/download/redisctl-v0.9.1/redisctl-x86_64-unknown-linux-gnu.tar.xz"
      sha256 "453f4ca1bbcab7dbf3a01a074520940792197c1827c3f474e5b69b42e1a7a362"
    end
  end

  def install
    bin.install "redisctl"
  end

  test do
    assert_match "redisctl", shell_output("#{bin}/redisctl --version")
  end
end
