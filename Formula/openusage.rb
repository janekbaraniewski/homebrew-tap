# typed: false
# frozen_string_literal: true

class Openusage < Formula
  desc "Monitor your AI coding tool quotas from a single TUI dashboard"
  homepage "https://openusage.sh"
  version "0.26.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/janekbaraniewski/openusage/releases/download/v0.26.1/openusage_0.26.1_darwin_arm64.tar.gz"
      sha256 "5138dcf7fa0132f2ee26093b82d31d71e15768b7f76283bab038fed901c1795e"
    else
      url "https://github.com/janekbaraniewski/openusage/releases/download/v0.26.1/openusage_0.26.1_darwin_amd64.tar.gz"
      sha256 "aaa922f4750010f7bad7aa0b68269ed2bf7dffbfe7e01b35fcdd6112176b5e05"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/janekbaraniewski/openusage/releases/download/v0.26.1/openusage_0.26.1_linux_arm64.tar.gz"
      sha256 "4df9645c54bd8a2945c8f5fd83d9a1e091d2bf9418dc8a4485e7fb32dc740c23"
    else
      url "https://github.com/janekbaraniewski/openusage/releases/download/v0.26.1/openusage_0.26.1_linux_amd64.tar.gz"
      sha256 "bfdf46d25d2968d7aa648366c0ed7d7b2d2e78c3f1d31e68d5e9d4411e5ab6f9"
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
