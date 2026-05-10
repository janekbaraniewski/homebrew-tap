# typed: false
# frozen_string_literal: true

class Openusage < Formula
  desc "Monitor your AI coding tool quotas from a single TUI dashboard"
  homepage "https://openusage.sh"
  version "0.10.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/janekbaraniewski/openusage/releases/download/v0.10.2/openusage_0.10.2_darwin_arm64.tar.gz"
      sha256 "6f2526be4e793031fabe50ef1a2410a71a9304bb60e2e252ce13625dc6cf78bf"
    else
      url "https://github.com/janekbaraniewski/openusage/releases/download/v0.10.2/openusage_0.10.2_darwin_amd64.tar.gz"
      sha256 "d8693d57baa88df70fafd34792d66e1444d514a68032318c5deac36bd3917c25"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/janekbaraniewski/openusage/releases/download/v0.10.2/openusage_0.10.2_linux_arm64.tar.gz"
      sha256 "e9eed85d2dee828fceb90a88088c9038f567a0a5e51ac44f32384a22995dcdea"
    else
      url "https://github.com/janekbaraniewski/openusage/releases/download/v0.10.2/openusage_0.10.2_linux_amd64.tar.gz"
      sha256 "73a295a5e249334729f99f2ddf9fe55952dc38db0f6a9b2c32d8e938389c7628"
    end
  end

  def install
    bin.install "openusage"
  end

  test do
    assert_match "openusage", shell_output("#{bin}/openusage --version 2>&1", 0)
  end
end
