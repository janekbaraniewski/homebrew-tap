# typed: false
# frozen_string_literal: true

class Openusage < Formula
  desc "Monitor your AI coding tool quotas from a single TUI dashboard"
  homepage "https://openusage.sh"
  version "0.9.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/janekbaraniewski/openusage/releases/download/v0.9.5/openusage_0.9.5_darwin_arm64.tar.gz"
      sha256 "b133055b78c4fb36876b905f1de4f0ccb55eebbbe83f6a57b4741e7e9ac1e1fe"
    else
      url "https://github.com/janekbaraniewski/openusage/releases/download/v0.9.5/openusage_0.9.5_darwin_amd64.tar.gz"
      sha256 "57f5d7dba35dc401662a42feb64acd3d98a46c6bf70861f0d3c134f24017ef37"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/janekbaraniewski/openusage/releases/download/v0.9.5/openusage_0.9.5_linux_arm64.tar.gz"
      sha256 "9b9763d237371bc176e1369028a4ce7cc866ebe2c4ebe27e5bc7eefe97deb5e5"
    else
      url "https://github.com/janekbaraniewski/openusage/releases/download/v0.9.5/openusage_0.9.5_linux_amd64.tar.gz"
      sha256 "406410fae22fa1211d50cb2e868251a92951a998f3b1f6e2927076b5cf5e148e"
    end
  end

  def install
    bin.install "openusage"
  end

  test do
    assert_match "openusage", shell_output("#{bin}/openusage --version 2>&1", 0)
  end
end
