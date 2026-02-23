class Autobot < Formula
  desc "Ultra-efficient personal AI assistant powered by Crystal"
  homepage "https://github.com/crystal-autobot/autobot"
  version "0.4.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/crystal-autobot/autobot/releases/download/v0.4.0/autobot-darwin-arm64.tar.gz"
      sha256 "29a5e03eef55f16acdfddfe08fe8d475aae856bb6a3514b7f4631964044c8e10"
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
