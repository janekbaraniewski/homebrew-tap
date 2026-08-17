# typed: false
# frozen_string_literal: true

class Openusage < Formula
  desc "Monitor your AI coding tool quotas from a single TUI dashboard"
  homepage "https://openusage.sh"
  version "0.24.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/janekbaraniewski/openusage/releases/download/v0.24.3/openusage_0.24.3_darwin_arm64.tar.gz"
      sha256 "45da6a9ff356f015782c1fae371251cb8fcdbea17598229af8b9a3e1ba92cb86"
    else
      url "https://github.com/janekbaraniewski/openusage/releases/download/v0.24.3/openusage_0.24.3_darwin_amd64.tar.gz"
      sha256 "bd6c2f9446ac8947deb7a8b9be81abdf5bd7eaf147ebbb8929b998b6ec35a89f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/janekbaraniewski/openusage/releases/download/v0.24.3/openusage_0.24.3_linux_arm64.tar.gz"
      sha256 "90a480a613324a2b2bd95e2473422b34f026db20ca97a7a65bfc8ac7df3e1d8d"
    else
      url "https://github.com/janekbaraniewski/openusage/releases/download/v0.24.3/openusage_0.24.3_linux_amd64.tar.gz"
      sha256 "58dd70741f97ea7c387637401b49c03143709faab55ea216ccb913b6debbe857"
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
