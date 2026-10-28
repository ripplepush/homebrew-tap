# Written by Ripple's release workflow; changes here are replaced on the next release.
class Ripple < Formula
  desc "Send notifications to your devices and manage your messages"
  homepage "https://ripple.do/docs/cli-reference"
  version "0.1.0"

  on_macos do
    on_arm do
      url "https://github.com/ripplepush/cli/releases/download/v0.1.0/ripple-darwin-arm64.tar.gz"
      sha256 "e393809cea755996ef47d67fb4f0b7b410475d14e9d3abf013dfc9a4e6b23936"
    end
    on_intel do
      url "https://github.com/ripplepush/cli/releases/download/v0.1.0/ripple-darwin-x64.tar.gz"
      sha256 "5d1bd7204125eb0d2da27865bda02bf3ba07d14ec81f5c0940701da2c00f208c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ripplepush/cli/releases/download/v0.1.0/ripple-linux-arm64.tar.gz"
      sha256 "979b3f500fca642c19d1bca22d746e7686970f4408b10de9ce0b81df57a86839"
    end
    on_intel do
      url "https://github.com/ripplepush/cli/releases/download/v0.1.0/ripple-linux-x64.tar.gz"
      sha256 "7e72c5f57ec5e9e366b3a8c988e834f7741a15760fda7f025d4eb868cd69a285"
    end
  end

  def install
    bin.install "ripple"
  end

  test do
    assert_equal version.to_s, shell_output("#{bin}/ripple --version").strip
  end
end
