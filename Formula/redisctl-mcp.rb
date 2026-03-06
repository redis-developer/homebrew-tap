class RedisctlMcp < Formula
  desc "MCP server for AI-powered Redis management"
  homepage "https://github.com/redis-developer/redisctl"
  version "0.9.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/redis-developer/redisctl/releases/download/redisctl-mcp-v0.9.0/redisctl-mcp-aarch64-apple-darwin.tar.xz"
      sha256 "5b5d8f7a24961d64446cf97991320e05caf412f35ba5c9faf5a7534886ba0cb8"
    end
    on_intel do
      url "https://github.com/redis-developer/redisctl/releases/download/redisctl-mcp-v0.9.0/redisctl-mcp-x86_64-apple-darwin.tar.xz"
      sha256 "caba311709668f47761d5990600b17f9ac413ffa1e1556bd6e4ebc4236d67215"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/redis-developer/redisctl/releases/download/redisctl-mcp-v0.9.0/redisctl-mcp-x86_64-unknown-linux-gnu.tar.xz"
      sha256 "a28ddf0f1bf16b6a6e9eabcca5e02423ba04ceafde379dc019320c0fab63d784"
    end
  end

  def install
    bin.install "redisctl-mcp"
  end

  test do
    assert_match "redisctl-mcp", shell_output("#{bin}/redisctl-mcp --version")
  end
end
