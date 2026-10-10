# typed: false
# frozen_string_literal: true

class Openusage < Formula
  desc "Monitor your AI coding tool quotas from a single TUI dashboard"
  homepage "https://openusage.sh"
  version "0.25.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/janekbaraniewski/openusage/releases/download/v0.25.1/openusage_0.25.1_darwin_arm64.tar.gz"
      sha256 "fb112a018c3d91cd75d9d385f70fb77283f760d9ef63738d1c6cba3f109905de"
    else
      url "https://github.com/janekbaraniewski/openusage/releases/download/v0.25.1/openusage_0.25.1_darwin_amd64.tar.gz"
      sha256 "9ca4e3c3d702f12b13ccac4581a0f9846dcc8c9fb57c818e49e3d5cf5a3ddbba"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/janekbaraniewski/openusage/releases/download/v0.25.1/openusage_0.25.1_linux_arm64.tar.gz"
      sha256 "241ec020a4f6bd2f941ac52eca7bdb541c50cbc0bed11eef615b65541bdbf50e"
    else
      url "https://github.com/janekbaraniewski/openusage/releases/download/v0.25.1/openusage_0.25.1_linux_amd64.tar.gz"
      sha256 "e068ea7a721f44921f759cdf42ddf1716b2efee21a6649ca2525d06dc6f45909"
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
