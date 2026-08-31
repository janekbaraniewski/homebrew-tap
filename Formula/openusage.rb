# typed: false
# frozen_string_literal: true

class Openusage < Formula
  desc "Monitor your AI coding tool quotas from a single TUI dashboard"
  homepage "https://openusage.sh"
  version "0.25.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/janekbaraniewski/openusage/releases/download/v0.25.0/openusage_0.25.0_darwin_arm64.tar.gz"
      sha256 "460d841325b9eda1ea58d80b5f86c9a77ef73e54517ffea7a7dd863e29180e29"
    else
      url "https://github.com/janekbaraniewski/openusage/releases/download/v0.25.0/openusage_0.25.0_darwin_amd64.tar.gz"
      sha256 "f4c88e38537f26136725ef9a90079e6717de96733ef16fbdf0aaaf041ae819d2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/janekbaraniewski/openusage/releases/download/v0.25.0/openusage_0.25.0_linux_arm64.tar.gz"
      sha256 "9f33a59d9a633df5aa6f3d9bb9479d01f2688cc0ce8794b2700ebec01eecfe45"
    else
      url "https://github.com/janekbaraniewski/openusage/releases/download/v0.25.0/openusage_0.25.0_linux_amd64.tar.gz"
      sha256 "5013e4b6bb6f120d53f4d35e74a273787b0ad2b26868c927657f7b3ec9dad68f"
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
