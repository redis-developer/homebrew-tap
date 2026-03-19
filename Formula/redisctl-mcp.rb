class RedisctlMcp < Formula
  desc "MCP server for AI-powered Redis management"
  homepage "https://github.com/redis-developer/redisctl"
  version "0.10.1"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/redis-developer/redisctl/releases/download/redisctl-mcp-v0.10.1/redisctl-mcp-aarch64-apple-darwin.tar.xz"
      sha256 "b63e0c8ce5f74ee7b38beae928ddeefa6a36b98ca41544164e31c3b851971dec"
    end
    on_intel do
      url "https://github.com/redis-developer/redisctl/releases/download/redisctl-mcp-v0.10.1/redisctl-mcp-x86_64-apple-darwin.tar.xz"
      sha256 "9c97bf2c48e22fa8a03210985d2c72fd474b292cafc632721fb2c8c42ef4b1f5"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/redis-developer/redisctl/releases/download/redisctl-mcp-v0.10.1/redisctl-mcp-x86_64-unknown-linux-gnu.tar.xz"
      sha256 "ead624a310ffd7bfccde71cf2e72c9bc948dfe70b4c73b88ed128434e26b96a5"
    end
  end

  def install
    bin.install "redisctl-mcp"
  end

  test do
    assert_match "redisctl-mcp", shell_output("#{bin}/redisctl-mcp --version")
  end
end
