# Written by Ripple's release workflow; changes here are replaced on the next release.
class Ripple < Formula
  desc "Send notifications to your devices and manage your messages"
  homepage "https://ripple.do/docs/cli-reference"
  version "0.4.0"

  on_macos do
    on_arm do
      url "https://github.com/ripplepush/cli/releases/download/v0.4.0/ripple-darwin-arm64.tar.gz"
      sha256 "77052b1f8df6ea222ddd69841d28a6910d9b2ccab23f5194196a16982f9061d2"
    end
    on_intel do
      url "https://github.com/ripplepush/cli/releases/download/v0.4.0/ripple-darwin-x64.tar.gz"
      sha256 "e90f7b674590a3eeca0cf318114f8bf698c2b34e66a79b3ebe50b7fd27b77b8f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ripplepush/cli/releases/download/v0.4.0/ripple-linux-arm64.tar.gz"
      sha256 "270088c62d02a14e8d3c608f8fe332d6dccce13e1159491d02693b00d35e6190"
    end
    on_intel do
      url "https://github.com/ripplepush/cli/releases/download/v0.4.0/ripple-linux-x64.tar.gz"
      sha256 "7936b7159732b4fe465d325e07dbe86779137a27085be39158d270261e761512"
    end
  end

  def install
    bin.install "ripple"
  end

  test do
    assert_equal version.to_s, shell_output("#{bin}/ripple --version").strip
  end
end
