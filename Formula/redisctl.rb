class Redisctl < Formula
  desc "CLI for Redis Cloud and Enterprise management"
  homepage "https://github.com/redis-developer/redisctl"
  version "0.10.1"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/redis-developer/redisctl/releases/download/redisctl-v0.10.1/redisctl-aarch64-apple-darwin.tar.xz"
      sha256 "968dc565e81e3a92e96afb277a287f4878ec3d77009090831c62962dcb9ccc93"
    end
    on_intel do
      url "https://github.com/redis-developer/redisctl/releases/download/redisctl-v0.10.1/redisctl-x86_64-apple-darwin.tar.xz"
      sha256 "e907d7341befe8c2d93de8a43c5fbf11096999a709d0c4948eb067036f259fa5"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/redis-developer/redisctl/releases/download/redisctl-v0.10.1/redisctl-x86_64-unknown-linux-gnu.tar.xz"
      sha256 "20150b50cda0cfa1171626b3045e5fef87b050c34f8be4b981b76c6fc0c92413"
    end
  end

  def install
    bin.install "redisctl"
  end

  test do
    assert_match "redisctl", shell_output("#{bin}/redisctl --version")
  end
end
