# Written by Ripple's release workflow; changes here are replaced on the next release.
class Ripple < Formula
  desc "Send notifications to your devices and manage your messages"
  homepage "https://ripple.do/docs/cli-reference"
  version "0.5.0"

  on_macos do
    on_arm do
      url "https://github.com/ripplepush/cli/releases/download/v0.5.0/ripple-darwin-arm64.tar.gz"
      sha256 "8f93c9e45c660cc4b8faa764807a6fe20b9f59f9cac7a9cf0a590d77bf0f0787"
    end
    on_intel do
      url "https://github.com/ripplepush/cli/releases/download/v0.5.0/ripple-darwin-x64.tar.gz"
      sha256 "8dea6099e5351abae76d748feed9b75848746fbaf38deaf0bef86afc7cf28c4f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ripplepush/cli/releases/download/v0.5.0/ripple-linux-arm64.tar.gz"
      sha256 "8d1899b426ed65afcac40852a2d9143a14d77c2d4eae466421aaeeff43bc1995"
    end
    on_intel do
      url "https://github.com/ripplepush/cli/releases/download/v0.5.0/ripple-linux-x64.tar.gz"
      sha256 "0c23ea43a5dfaa748bbe610321cc1ccfc5ed96b4fbc240f3c9bfb9eb3ad770bc"
    end
  end

  def install
    bin.install "ripple"
  end

  test do
    assert_equal version.to_s, shell_output("#{bin}/ripple --version").strip
  end
end
