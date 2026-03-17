class RedisctlMcp < Formula
  desc "MCP server for AI-powered Redis management"
  homepage "https://github.com/redis-developer/redisctl"
  version "0.10.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/redis-developer/redisctl/releases/download/redisctl-mcp-v0.10.0/redisctl-mcp-aarch64-apple-darwin.tar.xz"
      sha256 "2f3ec827fd995bf68befa63abfdeab3130f3c3ebb750d6e95bfa7ec67db4758b"
    end
    on_intel do
      url "https://github.com/redis-developer/redisctl/releases/download/redisctl-mcp-v0.10.0/redisctl-mcp-x86_64-apple-darwin.tar.xz"
      sha256 "aefd78e25abb03f3d882aabc761124d7d19d27608ebe5bb58aac139208049340"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/redis-developer/redisctl/releases/download/redisctl-mcp-v0.10.0/redisctl-mcp-x86_64-unknown-linux-gnu.tar.xz"
      sha256 "ec52ba9a9679a07adaff60188ea76991bf337c657210d835a868e9862abb0557"
    end
  end

  def install
    bin.install "redisctl-mcp"
  end

  test do
    assert_match "redisctl-mcp", shell_output("#{bin}/redisctl-mcp --version")
  end
end
