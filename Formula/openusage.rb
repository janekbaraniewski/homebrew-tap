# typed: false
# frozen_string_literal: true

class Openusage < Formula
  desc "Monitor your AI coding tool quotas from a single TUI dashboard"
  homepage "https://openusage.sh"
  version "0.23.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/janekbaraniewski/openusage/releases/download/v0.23.0/openusage_0.23.0_darwin_arm64.tar.gz"
      sha256 "10523164bbe403e1c223faa1bf335324517cf17dd4c7b233596ec1b8686939c5"
    else
      url "https://github.com/janekbaraniewski/openusage/releases/download/v0.23.0/openusage_0.23.0_darwin_amd64.tar.gz"
      sha256 "ceaa2155dc2a127ac36ee56ce164a9adf11c44c666ef9a0e5f881d66a36d8106"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/janekbaraniewski/openusage/releases/download/v0.23.0/openusage_0.23.0_linux_arm64.tar.gz"
      sha256 "7e93f7fdd6dffc320b5e7a8bad33d79042ed26719b0ed02365ccedde61996c1d"
    else
      url "https://github.com/janekbaraniewski/openusage/releases/download/v0.23.0/openusage_0.23.0_linux_amd64.tar.gz"
      sha256 "ac2da8b4cd89b09d9a4a2d6b0cf6c30494272ba8a40719aaaa5a0470a9613cce"
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
