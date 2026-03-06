# typed: false
# frozen_string_literal: true

class Openusage < Formula
  desc "Monitor your AI coding tool quotas from a single TUI dashboard"
  homepage "https://github.com/janekbaraniewski/openusage"
  version "0.6.9"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/janekbaraniewski/openusage/releases/download/v0.6.9/openusage_0.6.9_darwin_arm64.tar.gz"
      sha256 "772d19f7eaaa3edc47ae590e26fe7df7e19691cfc31c1e8a949b4b05a35e50d6"
    else
      url "https://github.com/janekbaraniewski/openusage/releases/download/v0.6.9/openusage_0.6.9_darwin_amd64.tar.gz"
      sha256 "f7e213088e45c3a7e43075c287f0f3419d86a88de9133ba46db92979acefbf0e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/janekbaraniewski/openusage/releases/download/v0.6.9/openusage_0.6.9_linux_arm64.tar.gz"
      sha256 "a85c1f2d3cdba9a8dbe8edcfe4a7fe5be154cf1d07e80b2dedb45dd3b277488f"
    else
      url "https://github.com/janekbaraniewski/openusage/releases/download/v0.6.9/openusage_0.6.9_linux_amd64.tar.gz"
      sha256 "8c75e0337b623b9404dded347302a3b7d56170b8f0180dca35455c4a3d129830"
    end
  end

  def install
    bin.install "openusage"
  end

  test do
    assert_match "openusage", shell_output("#{bin}/openusage --version 2>&1", 0)
  end
end
