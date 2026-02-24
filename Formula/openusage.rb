# typed: false
# frozen_string_literal: true

class Openusage < Formula
  desc "Monitor your AI coding tool quotas from a single TUI dashboard"
  homepage "https://github.com/janekbaraniewski/openusage"
  version "0.5.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/janekbaraniewski/openusage/releases/download/v0.5.2/openusage_0.5.2_darwin_arm64.tar.gz"
      sha256 "7fabfacaeb49a66a6c7dcbd448b0465ee97dc376f22c80bab707061e25e254ae"
    else
      url "https://github.com/janekbaraniewski/openusage/releases/download/v0.5.2/openusage_0.5.2_darwin_amd64.tar.gz"
      sha256 "0599b7026f83c9fd1ca11350e5f03eb218bad1b342c8b6d0d34f0ef6488d2e83"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/janekbaraniewski/openusage/releases/download/v0.5.2/openusage_0.5.2_linux_arm64.tar.gz"
      sha256 "ec56d56d502c745f8fd6ff6571af081f16a2cbdab0590fc42114876633d58980"
    else
      url "https://github.com/janekbaraniewski/openusage/releases/download/v0.5.2/openusage_0.5.2_linux_amd64.tar.gz"
      sha256 "3bd2a4fb737304bd16bb7be436001f83c00f6ee51da523dff5fcfe9021f2fa6b"
    end
  end

  def install
    bin.install "openusage"
  end

  test do
    assert_match "openusage", shell_output("#{bin}/openusage --version 2>&1", 0)
  end
end
