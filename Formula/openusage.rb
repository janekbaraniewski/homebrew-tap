# typed: false
# frozen_string_literal: true

class Openusage < Formula
  desc "Monitor your AI coding tool quotas from a single TUI dashboard"
  homepage "https://github.com/janekbaraniewski/openusage"
  version "0.6.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/janekbaraniewski/openusage/releases/download/v0.6.4/openusage_0.6.4_darwin_arm64.tar.gz"
      sha256 "f02c9685cb1643f0e2d4a21e7691c599eb19f266ba8fd9277e14096e8cd6d548"
    else
      url "https://github.com/janekbaraniewski/openusage/releases/download/v0.6.4/openusage_0.6.4_darwin_amd64.tar.gz"
      sha256 "718461fbedbdaca137efe6f293a8879f3f423f30a0a147d2d10af175e796b8a8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/janekbaraniewski/openusage/releases/download/v0.6.4/openusage_0.6.4_linux_arm64.tar.gz"
      sha256 "757de1851a23ce40d70f75866e2caf5d891a78a36c0335fdbdb33e4e82a0efad"
    else
      url "https://github.com/janekbaraniewski/openusage/releases/download/v0.6.4/openusage_0.6.4_linux_amd64.tar.gz"
      sha256 "5fb5ee932c96688ecb5c8c30da79ab0c1c6b9946e190bae473008f9fba3864bd"
    end
  end

  def install
    bin.install "openusage"
  end

  test do
    assert_match "openusage", shell_output("#{bin}/openusage --version 2>&1", 0)
  end
end
