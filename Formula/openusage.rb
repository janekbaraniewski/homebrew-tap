# typed: false
# frozen_string_literal: true

class Openusage < Formula
  desc "Monitor your AI coding tool quotas from a single TUI dashboard"
  homepage "https://github.com/janekbaraniewski/openusage"
  version "0.6.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/janekbaraniewski/openusage/releases/download/v0.6.1/openusage_0.6.1_darwin_arm64.tar.gz"
      sha256 "dd1a1d7c141185f434018b5e8afa02a76b6e122d0dd541a473dc926953ac6254"
    else
      url "https://github.com/janekbaraniewski/openusage/releases/download/v0.6.1/openusage_0.6.1_darwin_amd64.tar.gz"
      sha256 "13465988e5718555409c8b60d03ba79ce267e6eecbf7582a517bce173316fab5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/janekbaraniewski/openusage/releases/download/v0.6.1/openusage_0.6.1_linux_arm64.tar.gz"
      sha256 "00e5defcc6035d623228714dcab4c567326666066f5b41f1d291725738ecf292"
    else
      url "https://github.com/janekbaraniewski/openusage/releases/download/v0.6.1/openusage_0.6.1_linux_amd64.tar.gz"
      sha256 "32b69c0d4d6df85460805962183b0d5367ace44b00426e2ce1204153d0621687"
    end
  end

  def install
    bin.install "openusage"
  end

  test do
    assert_match "openusage", shell_output("#{bin}/openusage --version 2>&1", 0)
  end
end
