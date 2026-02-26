# typed: false
# frozen_string_literal: true

class Openusage < Formula
  desc "Monitor your AI coding tool quotas from a single TUI dashboard"
  homepage "https://github.com/janekbaraniewski/openusage"
  version "0.5.6"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/janekbaraniewski/openusage/releases/download/v0.5.6/openusage_0.5.6_darwin_arm64.tar.gz"
      sha256 "18270a7ddcfd08e9b3afbe0754e4691bfdf2b2e4196d312db15e824636675aa9"
    else
      url "https://github.com/janekbaraniewski/openusage/releases/download/v0.5.6/openusage_0.5.6_darwin_amd64.tar.gz"
      sha256 "b6dd1b94c9f8cbaebd3f76453444c1a90768ad4d894f7ed861b6c385357235db"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/janekbaraniewski/openusage/releases/download/v0.5.6/openusage_0.5.6_linux_arm64.tar.gz"
      sha256 "eb611afb058e65944bb8b837d923e1da5edb30e46deab8cebe2f240e572cff1b"
    else
      url "https://github.com/janekbaraniewski/openusage/releases/download/v0.5.6/openusage_0.5.6_linux_amd64.tar.gz"
      sha256 "dcf2993164efb2f0227ccf436be90f154a2262c8b97f1d1b19874f2dbde5419b"
    end
  end

  def install
    bin.install "openusage"
  end

  test do
    assert_match "openusage", shell_output("#{bin}/openusage --version 2>&1", 0)
  end
end
