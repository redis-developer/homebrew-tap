class RedisctlMcp < Formula
  desc "MCP server for AI-powered Redis management"
  homepage "https://github.com/redis-developer/redisctl"
  version "0.8.3"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/redis-developer/redisctl/releases/download/redisctl-mcp-v0.8.3/redisctl-mcp-aarch64-apple-darwin.tar.xz"
      sha256 "9d85fd351d2c6c1d8e535cdd7963aa8a2ed298deeef1fd363561c4262d9a794e"
    end
    on_intel do
      url "https://github.com/redis-developer/redisctl/releases/download/redisctl-mcp-v0.8.3/redisctl-mcp-x86_64-apple-darwin.tar.xz"
      sha256 "43779ad899862ba6f4d5b04779fead8dc650d78be0c073339c35d92970fed5d7"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/redis-developer/redisctl/releases/download/redisctl-mcp-v0.8.3/redisctl-mcp-x86_64-unknown-linux-gnu.tar.xz"
      sha256 "d06a061ab4c764cf2c5b35edb7735239365aa96352977a75b01bce23f0879fcd"
    end
  end

  def install
    bin.install "redisctl-mcp"
  end

  test do
    assert_match "redisctl-mcp", shell_output("#{bin}/redisctl-mcp --version")
  end
end
