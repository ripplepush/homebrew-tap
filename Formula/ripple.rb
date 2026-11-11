# Written by Ripple's release workflow; changes here are replaced on the next release.
class Ripple < Formula
  desc "Send notifications to your devices and manage your messages"
  homepage "https://ripple.do/docs/cli-reference"
  version "0.3.1"

  on_macos do
    on_arm do
      url "https://github.com/ripplepush/cli/releases/download/v0.3.1/ripple-darwin-arm64.tar.gz"
      sha256 "2bac57e4a664d388612ad2ac11099960584f668de0f9c3b0a5f2f713617c74a0"
    end
    on_intel do
      url "https://github.com/ripplepush/cli/releases/download/v0.3.1/ripple-darwin-x64.tar.gz"
      sha256 "a33c46709637781c81e0ca7477243c293107d4d49175752ce584d0c7e6356356"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ripplepush/cli/releases/download/v0.3.1/ripple-linux-arm64.tar.gz"
      sha256 "360df5a8b47dadfec3ccf5f0a41cb0ab29b3ece18261ce3147c9f44c88bb2c00"
    end
    on_intel do
      url "https://github.com/ripplepush/cli/releases/download/v0.3.1/ripple-linux-x64.tar.gz"
      sha256 "000df305aebeecf0caee8d759d2db5b1d8bd2f64410f7f13c9f93ab27ad6dbdf"
    end
  end

  def install
    bin.install "ripple"
  end

  test do
    assert_equal version.to_s, shell_output("#{bin}/ripple --version").strip
  end
end
