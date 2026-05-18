# typed: false
# frozen_string_literal: true

class Openusage < Formula
  desc "Monitor your AI coding tool quotas from a single TUI dashboard"
  homepage "https://openusage.sh"
  version "0.11.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/janekbaraniewski/openusage/releases/download/v0.11.1/openusage_0.11.1_darwin_arm64.tar.gz"
      sha256 "5dc93dfa156d90976da079d6556580b11fb13c52947ed13e9a586dfb0ba3f0cd"
    else
      url "https://github.com/janekbaraniewski/openusage/releases/download/v0.11.1/openusage_0.11.1_darwin_amd64.tar.gz"
      sha256 "7a4569e41d74f52ba6b0592d4b440af228a8ce113cac0ea167508992b0d6dd24"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/janekbaraniewski/openusage/releases/download/v0.11.1/openusage_0.11.1_linux_arm64.tar.gz"
      sha256 "eb05c4467c3ba713d6f391c5a819048aaaaa0cf3c60e0b4da1fa02c8993f622a"
    else
      url "https://github.com/janekbaraniewski/openusage/releases/download/v0.11.1/openusage_0.11.1_linux_amd64.tar.gz"
      sha256 "05628289091997d5865834f00aae28d77bffc07d23e7ac0dd74dd54cd37146fc"
    end
  end

  def install
    bin.install "openusage"
  end

  test do
    assert_match "openusage", shell_output("#{bin}/openusage --version 2>&1", 0)
  end
end
