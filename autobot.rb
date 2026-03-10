class Autobot < Formula
  desc "Ultra-efficient personal AI assistant powered by Crystal"
  homepage "https://github.com/crystal-autobot/autobot"
  version "0.6.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/crystal-autobot/autobot/releases/download/v0.6.0/autobot-darwin-arm64.tar.gz"
      sha256 "f02fc823045bd33baf348a61ba182fcab15c26e4a14dcceea594cdeb1654dbaa"
    end

    on_intel do
      odie "Autobot only supports Apple Silicon (ARM64) Macs. Intel Macs are not supported."
    end
  end

  def install
    bin.install "autobot"
  end

  test do
    assert_match "autobot v#{version}", shell_output("#{bin}/autobot version")
  end
end
