class Autobot < Formula
  desc "Ultra-efficient personal AI assistant powered by Crystal"
  homepage "https://github.com/crystal-autobot/autobot"
  version "0.1.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/crystal-autobot/autobot/releases/download/v0.1.2/autobot-darwin-arm64.tar.gz"
      sha256 "28acd790ffac90989ce5041f7c6ace5a384d4bc6f2b7f0b0dc1d6a49d3e8a3ac"
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
