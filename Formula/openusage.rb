# typed: false
# frozen_string_literal: true

class Openusage < Formula
  desc "Monitor your AI coding tool quotas from a single TUI dashboard"
  homepage "https://openusage.sh"
  version "0.24.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/janekbaraniewski/openusage/releases/download/v0.24.1/openusage_0.24.1_darwin_arm64.tar.gz"
      sha256 "18d6aa131702e1e5cee264c8f231fde0abc2b2a27472a057c26cbbfd8216cf35"
    else
      url "https://github.com/janekbaraniewski/openusage/releases/download/v0.24.1/openusage_0.24.1_darwin_amd64.tar.gz"
      sha256 "fd8c6ca5d8d99fe31f84731c3d120a38db24e4da73c7311f3ca05e025a3fdb8b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/janekbaraniewski/openusage/releases/download/v0.24.1/openusage_0.24.1_linux_arm64.tar.gz"
      sha256 "36f6f8bdf599d5d8918eaba19a6bda91681b1f5222167b74eb2d022f5ae91a72"
    else
      url "https://github.com/janekbaraniewski/openusage/releases/download/v0.24.1/openusage_0.24.1_linux_amd64.tar.gz"
      sha256 "ea3f57164f77a194c6e7a2f4d56e7afcfcfc3f6aa1afa022690f2e1a978b1845"
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
