# typed: false
# frozen_string_literal: true

class Openusage < Formula
  desc "Monitor your AI coding tool quotas from a single TUI dashboard"
  homepage "https://github.com/janekbaraniewski/openusage"
  version "0.8.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/janekbaraniewski/openusage/releases/download/v0.8.0/openusage_0.8.0_darwin_arm64.tar.gz"
      sha256 "d5a6fc83f76b9b9dbfa550ffbb84e5d0ea2a4373a13512b8b6d2ad2b27fc3c8a"
    else
      url "https://github.com/janekbaraniewski/openusage/releases/download/v0.8.0/openusage_0.8.0_darwin_amd64.tar.gz"
      sha256 "413505896770cc66ab0a3d705d22044c4cabb99607213021dc6b1a67923b6d05"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/janekbaraniewski/openusage/releases/download/v0.8.0/openusage_0.8.0_linux_arm64.tar.gz"
      sha256 "95a4be811e91dc2c6d3dfa0d770f6f32c793ae1f3f235b9e86b2e497b5314b6c"
    else
      url "https://github.com/janekbaraniewski/openusage/releases/download/v0.8.0/openusage_0.8.0_linux_amd64.tar.gz"
      sha256 "847962e3e81dbefafcf80cad23dbd25905027c3c140d6e315aa08de9a4f5cd8b"
    end
  end

  def install
    bin.install "openusage"
  end

  test do
    assert_match "openusage", shell_output("#{bin}/openusage --version 2>&1", 0)
  end
end
