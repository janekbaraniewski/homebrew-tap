# typed: false
# frozen_string_literal: true

class Synoctl < Formula
  desc "A TUI-first management tool for Synology DSM"
  homepage "https://github.com/janekbaraniewski/synology-ctl"
  version "0.1.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/janekbaraniewski/synology-ctl/releases/download/v0.1.1/synoctl_0.1.1_darwin_arm64.tar.gz"
      sha256 "86cf71066c3febe254f2935d141195f17c95ca1a484405090fd7332235bef18e"
    else
      url "https://github.com/janekbaraniewski/synology-ctl/releases/download/v0.1.1/synoctl_0.1.1_darwin_amd64.tar.gz"
      sha256 "d12b071f17e47ea5e3689663960b7f4ea98103570b8025b29dcbb6be0099314a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/janekbaraniewski/synology-ctl/releases/download/v0.1.1/synoctl_0.1.1_linux_arm64.tar.gz"
      sha256 "d539e8ff57852eb8e0c2d88fe6b1b5ed6b0d684660e8b91eb420c404aa93647e"
    else
      url "https://github.com/janekbaraniewski/synology-ctl/releases/download/v0.1.1/synoctl_0.1.1_linux_amd64.tar.gz"
      sha256 "07f484031768921f3d9e8d89eab84c3a2ece7598d60f964eafdbb575a18a39c6"
    end
  end

  def install
    bin.install "synoctl"
  end

  test do
    assert_match "synoctl", shell_output("#{bin}/synoctl version 2>&1", 0)
  end
end
