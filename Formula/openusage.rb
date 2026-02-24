# typed: false
# frozen_string_literal: true

class Openusage < Formula
  desc "Monitor your AI coding tool quotas from a single TUI dashboard"
  homepage "https://github.com/janekbaraniewski/openusage"
  version "0.5.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/janekbaraniewski/openusage/releases/download/v0.5.1/openusage_0.5.1_darwin_arm64.tar.gz"
      sha256 "5b0dd12c4c738ee8fdc4012652e20e4973a0d5ffaea565a930f448bc09f7b597"
    else
      url "https://github.com/janekbaraniewski/openusage/releases/download/v0.5.1/openusage_0.5.1_darwin_amd64.tar.gz"
      sha256 "47145b23007178a8fb7c15f5c85d40022104f011db466b21dd9b415bdefb7bc4"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/janekbaraniewski/openusage/releases/download/v0.5.1/openusage_0.5.1_linux_arm64.tar.gz"
      sha256 "4609beeb4ec3fdf6c6d696ddd88d61bd38263ee306b015c3624169bed74d5cce"
    else
      url "https://github.com/janekbaraniewski/openusage/releases/download/v0.5.1/openusage_0.5.1_linux_amd64.tar.gz"
      sha256 "7049a75d83f65321c4528ab85f8bef8f74f71d133d3bb5f5bf57f09af421a075"
    end
  end

  def install
    bin.install "openusage"
  end

  test do
    assert_match "openusage", shell_output("#{bin}/openusage --version 2>&1", 0)
  end
end
