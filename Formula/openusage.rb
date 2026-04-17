# typed: false
# frozen_string_literal: true

class Openusage < Formula
  desc "Monitor your AI coding tool quotas from a single TUI dashboard"
  homepage "https://openusage.sh"
  version "0.9.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/janekbaraniewski/openusage/releases/download/v0.9.3/openusage_0.9.3_darwin_arm64.tar.gz"
      sha256 "09e61aa53e583e8ea9553c7227d7b0c0c3007fb9d0efe98902521f9ad7e3f384"
    else
      url "https://github.com/janekbaraniewski/openusage/releases/download/v0.9.3/openusage_0.9.3_darwin_amd64.tar.gz"
      sha256 "e788a7e30f0d7b4fff84c8a7b71cfacc37c4ae0448ab558f871ef493a64aabd3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/janekbaraniewski/openusage/releases/download/v0.9.3/openusage_0.9.3_linux_arm64.tar.gz"
      sha256 "eb37f9e5dfdb9aad101b17047569462fef8f13ec29eb91c81718b1ec16b49af3"
    else
      url "https://github.com/janekbaraniewski/openusage/releases/download/v0.9.3/openusage_0.9.3_linux_amd64.tar.gz"
      sha256 "f2247b0f113fb25bad571bd5ad48c450ebeec6ff7353e4c4ed4dcb6434a0a9db"
    end
  end

  def install
    bin.install "openusage"
  end

  test do
    assert_match "openusage", shell_output("#{bin}/openusage --version 2>&1", 0)
  end
end
