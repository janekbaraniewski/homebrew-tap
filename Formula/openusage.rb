# typed: false
# frozen_string_literal: true

class Openusage < Formula
  desc "Monitor your AI coding tool quotas from a single TUI dashboard"
  homepage "https://openusage.sh"
  version "0.20.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/janekbaraniewski/openusage/releases/download/v0.20.0/openusage_0.20.0_darwin_arm64.tar.gz"
      sha256 "a8ff3f23897676b0bb8411a45235ac03694175fd684e3e260d033d3291355fa6"
    else
      url "https://github.com/janekbaraniewski/openusage/releases/download/v0.20.0/openusage_0.20.0_darwin_amd64.tar.gz"
      sha256 "d2c59f4a06ad943201c1061851b6d877fce257fb32991a676765e0769a982f85"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/janekbaraniewski/openusage/releases/download/v0.20.0/openusage_0.20.0_linux_arm64.tar.gz"
      sha256 "14c1b9461fb127f4d90af0217b35f67a51c0d7102e8a1e9b6252845cc33fe0fa"
    else
      url "https://github.com/janekbaraniewski/openusage/releases/download/v0.20.0/openusage_0.20.0_linux_amd64.tar.gz"
      sha256 "0401a81a8dc2088a559ad6345305e1ed67b8a40dfd6618f2db20e21e52c01b6a"
    end
  end

  def install
    bin.install "openusage"
  end

  test do
    assert_match "openusage", shell_output("#{bin}/openusage --version 2>&1", 0)
  end
end
