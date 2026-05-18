# typed: false
# frozen_string_literal: true

class Synoctl < Formula
  desc "A TUI-first management tool for Synology DSM"
  homepage "https://github.com/janekbaraniewski/synology-ctl"
  version "0.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/janekbaraniewski/synology-ctl/releases/download/v0.2.0/synoctl_0.2.0_darwin_arm64.tar.gz"
      sha256 "2c38c38800e6cc3b7467ea343cf759adb2aff0499dd8f51ef64163b3026fe9f9"
    else
      url "https://github.com/janekbaraniewski/synology-ctl/releases/download/v0.2.0/synoctl_0.2.0_darwin_amd64.tar.gz"
      sha256 "fb0dc7a188945a1b9b719bbead0305dd7471da577f48fd4762401c2275d39b70"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/janekbaraniewski/synology-ctl/releases/download/v0.2.0/synoctl_0.2.0_linux_arm64.tar.gz"
      sha256 "95394db812b382cd72bcee0f26dc02eadd49d225e4cc9938608631ab01a50292"
    else
      url "https://github.com/janekbaraniewski/synology-ctl/releases/download/v0.2.0/synoctl_0.2.0_linux_amd64.tar.gz"
      sha256 "0eb6945cef7cdeddfe95b32fdcde8771deb4dda6e4fc2694cd3e13de0a1d87f1"
    end
  end

  def install
    bin.install "synoctl"
  end

  test do
    assert_match "synoctl", shell_output("#{bin}/synoctl version 2>&1", 0)
  end
end
