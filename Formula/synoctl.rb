# typed: false
# frozen_string_literal: true

class Synoctl < Formula
  desc "A TUI-first management tool for Synology DSM"
  homepage "https://github.com/janekbaraniewski/synoctl"
  version "0.2.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/janekbaraniewski/synoctl/releases/download/v0.2.5/synoctl_0.2.5_darwin_arm64.tar.gz"
      sha256 "f7b8dd063f622adeea1a460e24cace43c7d2436d27dbd0fd339075429ee1ee5b"
    else
      url "https://github.com/janekbaraniewski/synoctl/releases/download/v0.2.5/synoctl_0.2.5_darwin_amd64.tar.gz"
      sha256 "9b49ed1364a68f1801c1d1e538e70890738c640239fa5229ae918feeaca2c98a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/janekbaraniewski/synoctl/releases/download/v0.2.5/synoctl_0.2.5_linux_arm64.tar.gz"
      sha256 "272b53659ee838729f3d7fd81e2cd1d999d28bfafb7c496be3110ee6f2431921"
    else
      url "https://github.com/janekbaraniewski/synoctl/releases/download/v0.2.5/synoctl_0.2.5_linux_amd64.tar.gz"
      sha256 "0c3579b5ca90ffff3acf1cb803e78b596fff389788474e1aea10287b07e1ffe1"
    end
  end

  def install
    bin.install "synoctl"
  end

  test do
    assert_match "synoctl", shell_output("#{bin}/synoctl version 2>&1", 0)
  end
end
