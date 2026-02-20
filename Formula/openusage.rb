# typed: false
# frozen_string_literal: true

class Openusage < Formula
  desc "Monitor your AI coding tool quotas from a single TUI dashboard"
  homepage "https://github.com/janekbaraniewski/openusage"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/janekbaraniewski/openusage/releases/download/v0.1.0/openusage_0.1.0_darwin_arm64.tar.gz"
      sha256 "b3994fac3945ce66c41e0b7515e9a4f927d8aa2c022b8d6f70058f8fcbf0569d"
    else
      url "https://github.com/janekbaraniewski/openusage/releases/download/v0.1.0/openusage_0.1.0_darwin_amd64.tar.gz"
      sha256 "ef7842b2054172278e73615bb08f145c35e81bebd9ecfdff9be7eb83c00e264d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/janekbaraniewski/openusage/releases/download/v0.1.0/openusage_0.1.0_linux_arm64.tar.gz"
      sha256 "723f2e070d32c8a4797ffc1c1c6aaef2499408f47f8023ebfda35b62e09857f3"
    else
      url "https://github.com/janekbaraniewski/openusage/releases/download/v0.1.0/openusage_0.1.0_linux_amd64.tar.gz"
      sha256 "1e71f7ea80f6053cc1d194d2166365394518faf05483d956f1041361764a8cf9"
    end
  end

  def install
    bin.install "openusage"
  end

  test do
    assert_match "openusage", shell_output("#{bin}/openusage --version 2>&1", 0)
  end
end
