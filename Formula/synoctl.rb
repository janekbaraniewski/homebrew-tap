# typed: false
# frozen_string_literal: true

class Synoctl < Formula
  desc "A TUI-first management tool for Synology DSM"
  homepage "https://github.com/janekbaraniewski/synoctl"
  version "0.2.11"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/janekbaraniewski/synoctl/releases/download/v0.2.11/synoctl_0.2.11_darwin_arm64.tar.gz"
      sha256 "31033236f15b66c595056a4ecedca371859065071db4249f619322e401c40d65"
    else
      url "https://github.com/janekbaraniewski/synoctl/releases/download/v0.2.11/synoctl_0.2.11_darwin_amd64.tar.gz"
      sha256 "6c0b6f12e349e3de54e1b8a02a1cc12c8903a29fe1a3cdac3e549abdec74b6e1"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/janekbaraniewski/synoctl/releases/download/v0.2.11/synoctl_0.2.11_linux_arm64.tar.gz"
      sha256 "2d4d41d8e34907f1cb07cc01cdcbbeba751114740d340d28a1cbc85eef587d79"
    else
      url "https://github.com/janekbaraniewski/synoctl/releases/download/v0.2.11/synoctl_0.2.11_linux_amd64.tar.gz"
      sha256 "2ff7b5cf2cdd29ec4fe22dc0df7e98adbc974b4b56b1f64fade64fb128e93d91"
    end
  end

  def install
    bin.install "synoctl"
  end

  test do
    assert_match "synoctl", shell_output("#{bin}/synoctl version 2>&1", 0)
  end
end
