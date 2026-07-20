# typed: false
# frozen_string_literal: true

class Openusage < Formula
  desc "Monitor your AI coding tool quotas from a single TUI dashboard"
  homepage "https://openusage.sh"
  version "0.24.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/janekbaraniewski/openusage/releases/download/v0.24.0/openusage_0.24.0_darwin_arm64.tar.gz"
      sha256 "de82490d9b21dcfa23a297c526ffc3ba8531bd0c55a339bb5d6d358fb2026ec0"
    else
      url "https://github.com/janekbaraniewski/openusage/releases/download/v0.24.0/openusage_0.24.0_darwin_amd64.tar.gz"
      sha256 "c4eef6fee978392e0b69af23342e752ee60fe255ee0a1830c959891cc2ddc5a1"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/janekbaraniewski/openusage/releases/download/v0.24.0/openusage_0.24.0_linux_arm64.tar.gz"
      sha256 "a02bc0e1cb4fbfb488ffe92e214196c443bd9a3d50d4928377c0ec982251d94f"
    else
      url "https://github.com/janekbaraniewski/openusage/releases/download/v0.24.0/openusage_0.24.0_linux_amd64.tar.gz"
      sha256 "3c62b1aaf3a838368d5fe04c9a050b2bbedcd31df2e16b6a27393008a0c834bf"
    end
  end

  def install
    bin.install "openusage"
  end

  def caveats
    <<~EOS
      Homebrew 6.0+ requires third-party taps to be trusted. A trust grant
      only covers the formula version it was made for, so each `brew update`
      that bumps openusage can leave the keg installed-but-unlinked
      ("command not found" until you run `brew link`).

      Trust the whole tap once to keep openusage linked across upgrades:

        brew trust janekbaraniewski/tap

      See https://docs.brew.sh/Tap-Trust for details.
    EOS
  end

  test do
    assert_match "openusage", shell_output("#{bin}/openusage --version 2>&1", 0)
  end
end
