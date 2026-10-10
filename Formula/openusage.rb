# typed: false
# frozen_string_literal: true

class Openusage < Formula
  desc "Monitor your AI coding tool quotas from a single TUI dashboard"
  homepage "https://openusage.sh"
  version "0.26.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/janekbaraniewski/openusage/releases/download/v0.26.0/openusage_0.26.0_darwin_arm64.tar.gz"
      sha256 "11245d37e68a877bb45a084827bf1dc1a72f8a54ff279978607c39159dcabd2f"
    else
      url "https://github.com/janekbaraniewski/openusage/releases/download/v0.26.0/openusage_0.26.0_darwin_amd64.tar.gz"
      sha256 "98f32ed696774a22c59846fd3b5f6274bf5055b2496c2fc5d3e3713bce2529c7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/janekbaraniewski/openusage/releases/download/v0.26.0/openusage_0.26.0_linux_arm64.tar.gz"
      sha256 "87a8f7ab1c76ae82da10232c6cc2d2a6bea831306788b9bacd9f374b08cf67aa"
    else
      url "https://github.com/janekbaraniewski/openusage/releases/download/v0.26.0/openusage_0.26.0_linux_amd64.tar.gz"
      sha256 "1b5094acb5ffb5b7ef5123c0e598e7d20fe21b4d0f09a5cedde82d0ea175e5df"
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
