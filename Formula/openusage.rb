# typed: false
# frozen_string_literal: true

class Openusage < Formula
  desc "Monitor your AI coding tool quotas from a single TUI dashboard"
  homepage "https://openusage.sh"
  version "0.21.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/janekbaraniewski/openusage/releases/download/v0.21.0/openusage_0.21.0_darwin_arm64.tar.gz"
      sha256 "b065144f474dadfa0600aab15f979870b1591b151e788d76dfa02c0af19ce8d6"
    else
      url "https://github.com/janekbaraniewski/openusage/releases/download/v0.21.0/openusage_0.21.0_darwin_amd64.tar.gz"
      sha256 "c84dbb263213498ca16c17615cc061db1b1accbee856a33ae5e81a8896306da3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/janekbaraniewski/openusage/releases/download/v0.21.0/openusage_0.21.0_linux_arm64.tar.gz"
      sha256 "78c0c7bbc97ed9206a9e55b7bec8961be5237a44a40b7c0dda2005ff1cc06996"
    else
      url "https://github.com/janekbaraniewski/openusage/releases/download/v0.21.0/openusage_0.21.0_linux_amd64.tar.gz"
      sha256 "3d1da9f8a9d312119dbf53b313bb77f8e6c2e102c9baa39f5f0ab549d0b000af"
    end
  end

  def install
    bin.install "openusage"
  end

  test do
    assert_match "openusage", shell_output("#{bin}/openusage --version 2>&1", 0)
  end
end
