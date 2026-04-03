# typed: false
# frozen_string_literal: true

class Openusage < Formula
  desc "Monitor your AI coding tool quotas from a single TUI dashboard"
  homepage "https://github.com/janekbaraniewski/openusage"
  version "0.7.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/janekbaraniewski/openusage/releases/download/v0.7.0/openusage_0.7.0_darwin_arm64.tar.gz"
      sha256 "7e7f4884d6a0339fef639a34e7559ca3699ad13e262713fc66eebf4ebb43083f"
    else
      url "https://github.com/janekbaraniewski/openusage/releases/download/v0.7.0/openusage_0.7.0_darwin_amd64.tar.gz"
      sha256 "968ccb2b4dc547fef1b2af44241f5ec8c1022c13171ffa9bd42915430bcea4a4"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/janekbaraniewski/openusage/releases/download/v0.7.0/openusage_0.7.0_linux_arm64.tar.gz"
      sha256 "88353a2a4445c1081d7d38e8ab403e119e6221b30f75fc81a3b05b107182dd07"
    else
      url "https://github.com/janekbaraniewski/openusage/releases/download/v0.7.0/openusage_0.7.0_linux_amd64.tar.gz"
      sha256 "47c12804aca9bfaebdc9ccfe0b2d03c38b275f3e3fb35a9483fd2c915ee397f2"
    end
  end

  def install
    bin.install "openusage"
  end

  test do
    assert_match "openusage", shell_output("#{bin}/openusage --version 2>&1", 0)
  end
end
