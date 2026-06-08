# typed: false
# frozen_string_literal: true

class Openusage < Formula
  desc "Monitor your AI coding tool quotas from a single TUI dashboard"
  homepage "https://openusage.sh"
  version "0.15.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/janekbaraniewski/openusage/releases/download/v0.15.1/openusage_0.15.1_darwin_arm64.tar.gz"
      sha256 "a2fc05c8e0a61322e6d398bdc088e99168fba76fc6e3a2e2eb04b0a9049679d9"
    else
      url "https://github.com/janekbaraniewski/openusage/releases/download/v0.15.1/openusage_0.15.1_darwin_amd64.tar.gz"
      sha256 "c8f22adce64c9fa1b17e16e3e4921113c8ea3f39aa2b8c58848b9254d2007bfd"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/janekbaraniewski/openusage/releases/download/v0.15.1/openusage_0.15.1_linux_arm64.tar.gz"
      sha256 "4a3eca5cc2b853292ca80d7f42961cd1e51b683df8904979c8c0099070053aa8"
    else
      url "https://github.com/janekbaraniewski/openusage/releases/download/v0.15.1/openusage_0.15.1_linux_amd64.tar.gz"
      sha256 "ba713ed7205cef234a5e144b1a7ac8410e7555eaf62c5b447e39bc59e037da21"
    end
  end

  def install
    bin.install "openusage"
  end

  test do
    assert_match "openusage", shell_output("#{bin}/openusage --version 2>&1", 0)
  end
end
