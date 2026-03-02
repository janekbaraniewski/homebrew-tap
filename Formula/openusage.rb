# typed: false
# frozen_string_literal: true

class Openusage < Formula
  desc "Monitor your AI coding tool quotas from a single TUI dashboard"
  homepage "https://github.com/janekbaraniewski/openusage"
  version "0.6.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/janekbaraniewski/openusage/releases/download/v0.6.0/openusage_0.6.0_darwin_arm64.tar.gz"
      sha256 "0de4cee5aabff399891390996796829e3babf5a73321ab1e4ecccd8cb5cae971"
    else
      url "https://github.com/janekbaraniewski/openusage/releases/download/v0.6.0/openusage_0.6.0_darwin_amd64.tar.gz"
      sha256 "4f14fdb76ea0ebe0f8230cedeb0e541b782113d69308e90a20952bd0a6b5bfe7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/janekbaraniewski/openusage/releases/download/v0.6.0/openusage_0.6.0_linux_arm64.tar.gz"
      sha256 "0877a8b4363429058d6d81fe4019b002f8af215d912eaf42a095ad1d3b4d9010"
    else
      url "https://github.com/janekbaraniewski/openusage/releases/download/v0.6.0/openusage_0.6.0_linux_amd64.tar.gz"
      sha256 "97978b121f62691abcd6eb79c709819125543e743dc588a2a0c7f627ba7c38e2"
    end
  end

  def install
    bin.install "openusage"
  end

  test do
    assert_match "openusage", shell_output("#{bin}/openusage --version 2>&1", 0)
  end
end
