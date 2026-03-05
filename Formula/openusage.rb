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
      sha256 "656aba3660dac8439d73bd0bac3daa2e95f309b803219922a6379d59806ff259"
    else
      url "https://github.com/janekbaraniewski/openusage/releases/download/v0.6.3/openusage_0.6.3_darwin_amd64.tar.gz"
      sha256 "f473daab570254633eba81a62c0e086c8f12d574cf4331bf63ecaea63fc4dd5f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/janekbaraniewski/openusage/releases/download/v0.6.3/openusage_0.6.3_linux_arm64.tar.gz"
      sha256 "0b3a504d5df3a47d94e75fa87a264906764dc0ad595411821fb91eb187ffe3e3"
    else
      url "https://github.com/janekbaraniewski/openusage/releases/download/v0.6.3/openusage_0.6.3_linux_amd64.tar.gz"
      sha256 "e3c144c3621373064d8539ba2d65ebf218f52ab0a00b54c65b6cd5db608da7cf"
    end
  end

  def install
    bin.install "openusage"
  end

  test do
    assert_match "openusage", shell_output("#{bin}/openusage --version 2>&1", 0)
  end
end
