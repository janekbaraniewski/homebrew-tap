# typed: false
# frozen_string_literal: true

class Openusage < Formula
  desc "Monitor your AI coding tool quotas from a single TUI dashboard"
  homepage "https://github.com/janekbaraniewski/openusage"
  version "0.5.7"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/janekbaraniewski/openusage/releases/download/v0.5.7/openusage_0.5.7_darwin_arm64.tar.gz"
      sha256 "62137f67d70a058410cfd263eea2274d6f5417bf7e17f85221fffd60f40dbbc9"
    else
      url "https://github.com/janekbaraniewski/openusage/releases/download/v0.5.7/openusage_0.5.7_darwin_amd64.tar.gz"
      sha256 "ef4500c0ebe49d1d0a75ea2fb8a668b2a18a8a5f7cc753e5630119f3f23667f6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/janekbaraniewski/openusage/releases/download/v0.5.7/openusage_0.5.7_linux_arm64.tar.gz"
      sha256 "536b8aa7b4c88db6e33ca7f2b81933206ed237f9986f7075e35c91a8809a97ec"
    else
      url "https://github.com/janekbaraniewski/openusage/releases/download/v0.5.7/openusage_0.5.7_linux_amd64.tar.gz"
      sha256 "078d135eee47889dd21da5b16722923240c423eae4f74fc06be0cf08b403d633"
    end
  end

  def install
    bin.install "openusage"
  end

  test do
    assert_match "openusage", shell_output("#{bin}/openusage --version 2>&1", 0)
  end
end
