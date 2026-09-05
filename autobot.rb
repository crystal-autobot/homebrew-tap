class Autobot < Formula
  desc "Ultra-efficient personal AI assistant powered by Crystal"
  homepage "https://github.com/crystal-autobot/autobot"
  version "0.8.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/crystal-autobot/autobot/releases/download/v0.8.0/autobot-darwin-arm64.tar.gz"
      sha256 "c41b83cf055a270284aec5ce7e244d320b762a33b9d3024ad8dd0a1ecbebae13"
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
