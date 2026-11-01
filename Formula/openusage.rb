# typed: false
# frozen_string_literal: true

class Openusage < Formula
  desc "Monitor your AI coding tool quotas from a single TUI dashboard"
  homepage "https://openusage.sh"
  version "0.26.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/janekbaraniewski/openusage/releases/download/v0.26.2/openusage_0.26.2_darwin_arm64.tar.gz"
      sha256 "ecefbd4206a085e601a14a21677b8860ffa0e973f240c424d7f3edffc6982e51"
    else
      url "https://github.com/janekbaraniewski/openusage/releases/download/v0.26.2/openusage_0.26.2_darwin_amd64.tar.gz"
      sha256 "90d4e45f330d31257064c4218b171e81280b4d3503474f5fcc0f230eb042a7ac"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/janekbaraniewski/openusage/releases/download/v0.26.2/openusage_0.26.2_linux_arm64.tar.gz"
      sha256 "fe566fe4016ee32d2bfddbac1e6f7ea8e9f3d49c7c86350de6f9b4ed65a4aa8c"
    else
      url "https://github.com/janekbaraniewski/openusage/releases/download/v0.26.2/openusage_0.26.2_linux_amd64.tar.gz"
      sha256 "600c539ed76b71ac038a9e79315d41bf40875ecff5edf2f2288823f079d953dc"
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
