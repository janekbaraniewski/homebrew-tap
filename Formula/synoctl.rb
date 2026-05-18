# typed: false
# frozen_string_literal: true

class Synoctl < Formula
  desc "A TUI-first management tool for Synology DSM"
  homepage "https://github.com/janekbaraniewski/synoctl"
  version "0.2.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/janekbaraniewski/synoctl/releases/download/v0.2.1/synoctl_0.2.1_darwin_arm64.tar.gz"
      sha256 "1e2f74736462f3ab3b5daf65f195be78afd7b0dcb74853a917d63c549509ebc9"
    else
      url "https://github.com/janekbaraniewski/synoctl/releases/download/v0.2.1/synoctl_0.2.1_darwin_amd64.tar.gz"
      sha256 "ff10c4cc53baaac01e635d33823dff36917ae07c602037cbe11d8b3340cd40fe"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/janekbaraniewski/synoctl/releases/download/v0.2.1/synoctl_0.2.1_linux_arm64.tar.gz"
      sha256 "69f1d69d555f6358767d919dba2e80d164caad64d9a5fad9b11a71f96323c211"
    else
      url "https://github.com/janekbaraniewski/synoctl/releases/download/v0.2.1/synoctl_0.2.1_linux_amd64.tar.gz"
      sha256 "c6f4b352e87558f51407ed0da72e3d11a5c85bc28af43f2c71cf1f72272ea710"
    end
  end

  def install
    bin.install "synoctl"
  end

  test do
    assert_match "synoctl", shell_output("#{bin}/synoctl version 2>&1", 0)
  end
end
