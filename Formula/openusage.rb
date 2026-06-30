# typed: false
# frozen_string_literal: true

class Openusage < Formula
  desc "Monitor your AI coding tool quotas from a single TUI dashboard"
  homepage "https://openusage.sh"
  version "0.22.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/janekbaraniewski/openusage/releases/download/v0.22.0/openusage_0.22.0_darwin_arm64.tar.gz"
      sha256 "356517e933d2612d14457208bffbbf36ebfd2d5929eba226c9b91ed6c09773e5"
    else
      url "https://github.com/janekbaraniewski/openusage/releases/download/v0.22.0/openusage_0.22.0_darwin_amd64.tar.gz"
      sha256 "62d120acb4309a5ad628664a4f5d9652171d1eb1e319905f03a7181bd9d678d5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/janekbaraniewski/openusage/releases/download/v0.22.0/openusage_0.22.0_linux_arm64.tar.gz"
      sha256 "bfb541498d29b0e4d5fabb758543701e6055bf9b4c2a1b16f36ca26c107e83dd"
    else
      url "https://github.com/janekbaraniewski/openusage/releases/download/v0.22.0/openusage_0.22.0_linux_amd64.tar.gz"
      sha256 "a601ad3c6140aa5d5b793eb3e510b5b2a3d3c84f054eb6552b9a69d37fdda627"
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
