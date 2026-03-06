# typed: false
# frozen_string_literal: true

class Openusage < Formula
  desc "Monitor your AI coding tool quotas from a single TUI dashboard"
  homepage "https://github.com/janekbaraniewski/openusage"
  version "0.6.7"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/janekbaraniewski/openusage/releases/download/v0.6.7/openusage_0.6.7_darwin_arm64.tar.gz"
      sha256 "3dab949ac383c66eb3685bc875a2851b10b4bb40816effb30ad9ad9dcc4de079"
    else
      url "https://github.com/janekbaraniewski/openusage/releases/download/v0.6.7/openusage_0.6.7_darwin_amd64.tar.gz"
      sha256 "16a817ce750445d7f6e9dba2d2023380fab65518b6142daeec8315df19a53481"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/janekbaraniewski/openusage/releases/download/v0.6.7/openusage_0.6.7_linux_arm64.tar.gz"
      sha256 "a9b2d44d37d10d0322e7b620f1b9204c0622f5424fe5c77fab55481026ba60bd"
    else
      url "https://github.com/janekbaraniewski/openusage/releases/download/v0.6.7/openusage_0.6.7_linux_amd64.tar.gz"
      sha256 "9c7509f6b0f25a5cfe1899c531e0f34a22f6b97592c60969c76bcee3e8b12518"
    end
  end

  def install
    bin.install "openusage"
  end

  test do
    assert_match "openusage", shell_output("#{bin}/openusage --version 2>&1", 0)
  end
end
