class RedisctlMcp < Formula
  desc "MCP server for AI-powered Redis management"
  homepage "https://github.com/redis-developer/redisctl"
  version "0.5.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/redis-developer/redisctl/releases/download/redisctl-mcp-v0.5.0/redisctl-mcp-aarch64-apple-darwin.tar.xz"
      sha256 "3b6a39b957d3837f09db805e1fb3f17d1e86d4cb63dbdda1e2a262e289957c3d"
    end
    on_intel do
      url "https://github.com/redis-developer/redisctl/releases/download/redisctl-mcp-v0.5.0/redisctl-mcp-x86_64-apple-darwin.tar.xz"
      sha256 "dcaaa7baca6e3727c1593090666b320360c2ddf2e4af28fab11decd0b7be8ce1"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/redis-developer/redisctl/releases/download/redisctl-mcp-v0.5.0/redisctl-mcp-x86_64-unknown-linux-gnu.tar.xz"
      sha256 "ece5631168e1ff5d9a6928d0447d965f1dbd1dd148ed549d3172a4a140dfdc71"
    end
  end

  def install
    bin.install "redisctl-mcp"
  end

  test do
    assert_match "redisctl-mcp", shell_output("#{bin}/redisctl-mcp --version")
  end
end
