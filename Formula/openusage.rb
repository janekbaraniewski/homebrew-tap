# typed: false
# frozen_string_literal: true

class Openusage < Formula
  desc "Monitor your AI coding tool quotas from a single TUI dashboard"
  homepage "https://openusage.sh"
  version "0.26.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/janekbaraniewski/openusage/releases/download/v0.26.3/openusage_0.26.3_darwin_arm64.tar.gz"
      sha256 "a50f0434b9dc41778f9f21d9accd6c9ab65d720bea82b9a89d49e7bd5fd8f107"
    else
      url "https://github.com/janekbaraniewski/openusage/releases/download/v0.26.3/openusage_0.26.3_darwin_amd64.tar.gz"
      sha256 "24d1983342889caeb1a27c327b88b0b206a5524ec58b08ce14e8e74623f44f81"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/janekbaraniewski/openusage/releases/download/v0.26.3/openusage_0.26.3_linux_arm64.tar.gz"
      sha256 "cf8ac7462d2c27278dec6a4931fc43035c2893f2ddf90be7c96360aea09b5e75"
    else
      url "https://github.com/janekbaraniewski/openusage/releases/download/v0.26.3/openusage_0.26.3_linux_amd64.tar.gz"
      sha256 "171aae210ff93f423b0a7b6be276a1ccda2045c53ebe9db6362364b841225960"
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
