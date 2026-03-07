class RedisctlMcp < Formula
  desc "MCP server for AI-powered Redis management"
  homepage "https://github.com/redis-developer/redisctl"
  version "0.9.1"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/redis-developer/redisctl/releases/download/redisctl-mcp-v0.9.1/redisctl-mcp-aarch64-apple-darwin.tar.xz"
      sha256 "2feb4c079490a7b5a479f1ecb4850343324fe9996c8c9c40ec102b40069b5281"
    end
    on_intel do
      url "https://github.com/redis-developer/redisctl/releases/download/redisctl-mcp-v0.9.1/redisctl-mcp-x86_64-apple-darwin.tar.xz"
      sha256 "bc05314b4aa20f98cee79321a042b3e4b19aa940ecd6bd09551176e56ffb4782"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/redis-developer/redisctl/releases/download/redisctl-mcp-v0.9.1/redisctl-mcp-x86_64-unknown-linux-gnu.tar.xz"
      sha256 "50f11dc285f73fc6315d8e5d6ad3973fef93393fffd1564e1f00c7c0834d655e"
    end
  end

  def install
    bin.install "redisctl-mcp"
  end

  test do
    assert_match "redisctl-mcp", shell_output("#{bin}/redisctl-mcp --version")
  end
end
