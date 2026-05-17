# typed: false
# frozen_string_literal: true

class Synoctl < Formula
  desc "A TUI-first management tool for Synology DSM"
  homepage "https://github.com/janekbaraniewski/synology-ctl"
  version "0.1.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/janekbaraniewski/synology-ctl/releases/download/v0.1.2/synoctl_0.1.2_darwin_arm64.tar.gz"
      sha256 "8a9447fdd555f8ea173a7117848a16642120716afecc85bc6cba4db896c138d1"
    else
      url "https://github.com/janekbaraniewski/synology-ctl/releases/download/v0.1.2/synoctl_0.1.2_darwin_amd64.tar.gz"
      sha256 "de9593f9243fc1e82a976af32a61a4429cdcb0337a6571118f37efb3b305fee4"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/janekbaraniewski/synology-ctl/releases/download/v0.1.2/synoctl_0.1.2_linux_arm64.tar.gz"
      sha256 "fe381832e13a76bcf1e945653628f493b9fa4d064eafa4324a2e9234999f436a"
    else
      url "https://github.com/janekbaraniewski/synology-ctl/releases/download/v0.1.2/synoctl_0.1.2_linux_amd64.tar.gz"
      sha256 "d5328858fa1a6f58c7fc8884f8579670be7a813cbb06fef9778fa42b29f0a2f9"
    end
  end

  def install
    bin.install "synoctl"
  end

  test do
    assert_match "synoctl", shell_output("#{bin}/synoctl version 2>&1", 0)
  end
end
