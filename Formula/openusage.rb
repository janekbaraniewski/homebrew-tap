# typed: false
# frozen_string_literal: true

class Openusage < Formula
  desc "Monitor your AI coding tool quotas from a single TUI dashboard"
  homepage "https://github.com/janekbaraniewski/openusage"
  version "0.6.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/janekbaraniewski/openusage/releases/download/v0.6.3/openusage_0.6.3_darwin_arm64.tar.gz"
      sha256 "d04eb97f44ad0390eff89320abbde33d225e08ff5dcee4b84d452d9b30a989d6"
    else
      url "https://github.com/janekbaraniewski/openusage/releases/download/v0.6.3/openusage_0.6.3_darwin_amd64.tar.gz"
      sha256 "e38c82cfdb77b4a4877abe6614e1d692facd39086d92bdb3b3e049c37d45b918"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/janekbaraniewski/openusage/releases/download/v0.6.3/openusage_0.6.3_linux_arm64.tar.gz"
      sha256 "dbb661953a1c23de17a8a28077631fe0d0f68dfcde7c406f0dacea8986858547"
    else
      url "https://github.com/janekbaraniewski/openusage/releases/download/v0.6.3/openusage_0.6.3_linux_amd64.tar.gz"
      sha256 "bb90044a43fbaeb6a21b1503359abfa8738d70afe3f5ce1bf53c7a971d53d44a"
    end
  end

  def install
    bin.install "openusage"
  end

  test do
    assert_match "openusage", shell_output("#{bin}/openusage --version 2>&1", 0)
  end
end
