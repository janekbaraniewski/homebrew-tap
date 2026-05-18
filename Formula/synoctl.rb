# typed: false
# frozen_string_literal: true

class Synoctl < Formula
  desc "A TUI-first management tool for Synology DSM"
  homepage "https://github.com/janekbaraniewski/synoctl"
  version "0.2.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/janekbaraniewski/synoctl/releases/download/v0.2.3/synoctl_0.2.3_darwin_arm64.tar.gz"
      sha256 "c1131d828b0912ca1d7514f9040c3d4ae6093c66a982d045336e367202046b84"
    else
      url "https://github.com/janekbaraniewski/synoctl/releases/download/v0.2.3/synoctl_0.2.3_darwin_amd64.tar.gz"
      sha256 "af784537e143666610b4bcdd2409f129f652ac822cc70d1ea02d2546b38a2765"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/janekbaraniewski/synoctl/releases/download/v0.2.3/synoctl_0.2.3_linux_arm64.tar.gz"
      sha256 "92f586cbb7338fcf3cd13f9af25e280832a08e6f79b3f4e88fa22f0b47b68092"
    else
      url "https://github.com/janekbaraniewski/synoctl/releases/download/v0.2.3/synoctl_0.2.3_linux_amd64.tar.gz"
      sha256 "1777e71387a9705ef3a8c8596146844aa476f48281fcb6ebfa65f62ef327c848"
    end
  end

  def install
    bin.install "synoctl"
  end

  test do
    assert_match "synoctl", shell_output("#{bin}/synoctl version 2>&1", 0)
  end
end
