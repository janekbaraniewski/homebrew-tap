# typed: false
# frozen_string_literal: true

class Openusage < Formula
  desc "Monitor your AI coding tool quotas from a single TUI dashboard"
  homepage "https://openusage.sh"
  version "0.24.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/janekbaraniewski/openusage/releases/download/v0.24.4/openusage_0.24.4_darwin_arm64.tar.gz"
      sha256 "e56b2c223c131778b198808ab42b3e5f39ff2d0195066c4890f00cff187e87aa"
    else
      url "https://github.com/janekbaraniewski/openusage/releases/download/v0.24.4/openusage_0.24.4_darwin_amd64.tar.gz"
      sha256 "6e764dc6b84c4fb5b98dd71646ece59df3aae14a6917696ed66421b66a848196"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/janekbaraniewski/openusage/releases/download/v0.24.4/openusage_0.24.4_linux_arm64.tar.gz"
      sha256 "5c07a7a0d90d9aac66bd3d8ecf2da3a10fc485e704152c0f6bb11c01f43fe2e8"
    else
      url "https://github.com/janekbaraniewski/openusage/releases/download/v0.24.4/openusage_0.24.4_linux_amd64.tar.gz"
      sha256 "fe58739155651ebd9aaad0334ceb8645206944a77bc8a7d0a4f6b34ec86c9b30"
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
