# typed: false
# frozen_string_literal: true

class Openusage < Formula
  desc "Monitor your AI coding tool quotas from a single TUI dashboard"
  homepage "https://openusage.sh"
  version "0.10.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/janekbaraniewski/openusage/releases/download/v0.10.5/openusage_0.10.5_darwin_arm64.tar.gz"
      sha256 "99d5150a73a858db962d77afac3d3230f48ae6c4286c94588af1097db09cee46"
    else
      url "https://github.com/janekbaraniewski/openusage/releases/download/v0.10.5/openusage_0.10.5_darwin_amd64.tar.gz"
      sha256 "4b7b868ea6d379deef5b8d12bd787f467e57939574136e82652dc5996fa0944f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/janekbaraniewski/openusage/releases/download/v0.10.5/openusage_0.10.5_linux_arm64.tar.gz"
      sha256 "ab04be8ed526d17a43a5b82230549a183d6c52ebee66802dfe7c819740d93207"
    else
      url "https://github.com/janekbaraniewski/openusage/releases/download/v0.10.5/openusage_0.10.5_linux_amd64.tar.gz"
      sha256 "7977cc8da60556899d026e472430430c310ec0a62d88799b9bc7bba8bbd5cb11"
    end
  end

  def install
    bin.install "openusage"
  end

  test do
    assert_match "openusage", shell_output("#{bin}/openusage --version 2>&1", 0)
  end
end
