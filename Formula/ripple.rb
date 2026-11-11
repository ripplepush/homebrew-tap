# Written by Ripple's release workflow; changes here are replaced on the next release.
class Ripple < Formula
  desc "Send notifications to your devices and manage your messages"
  homepage "https://ripple.do/docs/cli-reference"
  version "0.3.0"

  on_macos do
    on_arm do
      url "https://github.com/ripplepush/cli/releases/download/v0.3.0/ripple-darwin-arm64.tar.gz"
      sha256 "d37573f6720d5024e98336cf70018d8745fdb4903694a352e3ed29ddda5552a0"
    end
    on_intel do
      url "https://github.com/ripplepush/cli/releases/download/v0.3.0/ripple-darwin-x64.tar.gz"
      sha256 "44231e0097a5b2d82655ccc6e09bd9392eb5f4303dc19a626ef57644680d7893"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ripplepush/cli/releases/download/v0.3.0/ripple-linux-arm64.tar.gz"
      sha256 "5247aa1703e2efeb57ddd5a07596aceedf4a1ea7d8e85cb93acf16efed1840ae"
    end
    on_intel do
      url "https://github.com/ripplepush/cli/releases/download/v0.3.0/ripple-linux-x64.tar.gz"
      sha256 "b4c2f9e68cd76b5744fb7dc06f5c7f9d53450e6c19fc979163aef33ecd54e709"
    end
  end

  def install
    bin.install "ripple"
  end

  test do
    assert_equal version.to_s, shell_output("#{bin}/ripple --version").strip
  end
end
