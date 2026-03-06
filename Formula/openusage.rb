# typed: false
# frozen_string_literal: true

class Openusage < Formula
  desc "Monitor your AI coding tool quotas from a single TUI dashboard"
  homepage "https://github.com/janekbaraniewski/openusage"
  version "0.6.8"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/janekbaraniewski/openusage/releases/download/v0.6.8/openusage_0.6.8_darwin_arm64.tar.gz"
      sha256 "1ac28b3522b5deae827594662674be832a32a72783337604d45d0b205247eeae"
    else
      url "https://github.com/janekbaraniewski/openusage/releases/download/v0.6.8/openusage_0.6.8_darwin_amd64.tar.gz"
      sha256 "4803d4ee29c3549034c11e6c76feaca88b78a3d63dcef554a836f3902ba1bece"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/janekbaraniewski/openusage/releases/download/v0.6.8/openusage_0.6.8_linux_arm64.tar.gz"
      sha256 "3750ebe157c3eb7a580991b4759bc4b3e36c8a2c5327291a5fd8c2809fb3aead"
    else
      url "https://github.com/janekbaraniewski/openusage/releases/download/v0.6.8/openusage_0.6.8_linux_amd64.tar.gz"
      sha256 "1a160a5e3573357b04c65fdffd854b91f3052338d6302f1398c13d144ac1860a"
    end
  end

  def install
    bin.install "openusage"
  end

  test do
    assert_match "openusage", shell_output("#{bin}/openusage --version 2>&1", 0)
  end
end
