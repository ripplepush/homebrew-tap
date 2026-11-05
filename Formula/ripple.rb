# Written by Ripple's release workflow; changes here are replaced on the next release.
class Ripple < Formula
  desc "Send notifications to your devices and manage your messages"
  homepage "https://ripple.do/docs/cli-reference"
  version "0.2.0"

  on_macos do
    on_arm do
      url "https://github.com/ripplepush/cli/releases/download/v0.2.0/ripple-darwin-arm64.tar.gz"
      sha256 "25a846f693df06a0586a3387bcdda6f49cc1a68940dbc9e5e5800dd2e31155c7"
    end
    on_intel do
      url "https://github.com/ripplepush/cli/releases/download/v0.2.0/ripple-darwin-x64.tar.gz"
      sha256 "b8f7f7234adf8a7b6925e435026b69be8bf310b60305a2cfdbeacf8fb3586dee"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ripplepush/cli/releases/download/v0.2.0/ripple-linux-arm64.tar.gz"
      sha256 "730419808a77b28ee60f95125ab40bdccadf2a650b2103104025781ec9afbabb"
    end
    on_intel do
      url "https://github.com/ripplepush/cli/releases/download/v0.2.0/ripple-linux-x64.tar.gz"
      sha256 "5256f13e6ed2aab3ddd9f02f419f59f4967939f7ebb482c397f58489855c88e5"
    end
  end

  def install
    bin.install "ripple"
  end

  test do
    assert_equal version.to_s, shell_output("#{bin}/ripple --version").strip
  end
end
