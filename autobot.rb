class Autobot < Formula
  desc "Ultra-efficient personal AI assistant powered by Crystal"
  homepage "https://github.com/crystal-autobot/autobot"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/crystal-autobot/autobot/releases/download/v0.1.0/autobot-darwin-arm64.tar.gz"
      sha256 "c74a6e224ace105097a3e4ab465a9243451c30208ccea62b48bdac99808aa87a"
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
