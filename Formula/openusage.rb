# typed: false
# frozen_string_literal: true

class Openusage < Formula
  desc "Monitor your AI coding tool quotas from a single TUI dashboard"
  homepage "https://openusage.sh"
  version "0.24.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/janekbaraniewski/openusage/releases/download/v0.24.2/openusage_0.24.2_darwin_arm64.tar.gz"
      sha256 "a450b10e5b96516dfc269423433ad23b4efb78701ecb0b022e0d8bd0be330f13"
    else
      url "https://github.com/janekbaraniewski/openusage/releases/download/v0.24.2/openusage_0.24.2_darwin_amd64.tar.gz"
      sha256 "f46a261f6a2cef0b64d8033d9ea92e293d02a285d8e2915761359b3b5844c5ad"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/janekbaraniewski/openusage/releases/download/v0.24.2/openusage_0.24.2_linux_arm64.tar.gz"
      sha256 "e074c4823ef6b42ac24f3171bf1cde08ec53dfab4af7c34a79dab5e274e1f286"
    else
      url "https://github.com/janekbaraniewski/openusage/releases/download/v0.24.2/openusage_0.24.2_linux_amd64.tar.gz"
      sha256 "55e69f44394970b10babe45da682de56a1cdafecdee779ab003f45a6cd01ddf1"
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
