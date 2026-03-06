# typed: false
# frozen_string_literal: true

class Openusage < Formula
  desc "Monitor your AI coding tool quotas from a single TUI dashboard"
  homepage "https://github.com/janekbaraniewski/openusage"
  version "0.6.6"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/janekbaraniewski/openusage/releases/download/v0.6.6/openusage_0.6.6_darwin_arm64.tar.gz"
      sha256 "e2a1924b15250645a8b9b4d36f80b43527cf7e040834950bdffa1e0098f7d31d"
    else
      url "https://github.com/janekbaraniewski/openusage/releases/download/v0.6.6/openusage_0.6.6_darwin_amd64.tar.gz"
      sha256 "eab1149f3b62a83b105f7bf3f0a6863512ac86b19f44e31c59a29f26d330fbc2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/janekbaraniewski/openusage/releases/download/v0.6.6/openusage_0.6.6_linux_arm64.tar.gz"
      sha256 "ec544c9d1fc28e8cd269d04d846feea96b5ac03ca72d1470b86240325eea6665"
    else
      url "https://github.com/janekbaraniewski/openusage/releases/download/v0.6.6/openusage_0.6.6_linux_amd64.tar.gz"
      sha256 "e40237b7928fdd7825f938d3c9183182493884489008abd8ab140b5dcb507ae4"
    end
  end

  def install
    bin.install "openusage"
  end

  test do
    assert_match "openusage", shell_output("#{bin}/openusage --version 2>&1", 0)
  end
end
