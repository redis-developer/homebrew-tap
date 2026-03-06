class RedisctlMcp < Formula
  desc "MCP server for AI-powered Redis management"
  homepage "https://github.com/redis-developer/redisctl"
  version "0.8.2"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/redis-developer/redisctl/releases/download/redisctl-mcp-v0.8.2/redisctl-mcp-aarch64-apple-darwin.tar.xz"
      sha256 "b22d793bbbdf0e3175449daa2f24a621015cbf2fbf7f116301bdb6d40cb9d9e3"
    end
    on_intel do
      url "https://github.com/redis-developer/redisctl/releases/download/redisctl-mcp-v0.8.2/redisctl-mcp-x86_64-apple-darwin.tar.xz"
      sha256 "513eaa0cc088a39f3a13f8b1271e15bd70e320caf0c33ff575db7928a2afe254"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/redis-developer/redisctl/releases/download/redisctl-mcp-v0.8.2/redisctl-mcp-x86_64-unknown-linux-gnu.tar.xz"
      sha256 "17898926d728635b3c03d77b4f44cc30bf358452b084bba912d5f7454f5e2c06"
    end
  end

  def install
    bin.install "redisctl-mcp"
  end

  test do
    assert_match "redisctl-mcp", shell_output("#{bin}/redisctl-mcp --version")
  end
end
