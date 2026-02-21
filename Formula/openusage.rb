# typed: false
# frozen_string_literal: true

class Openusage < Formula
  desc "Monitor your AI coding tool quotas from a single TUI dashboard"
  homepage "https://github.com/janekbaraniewski/openusage"
  version "0.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/janekbaraniewski/openusage/releases/download/v0.2.0/openusage_0.2.0_darwin_arm64.tar.gz"
      sha256 "24c4a57cf0f78cb85cbdb60a14eab27ffbbf34b3da901073a3aa0297e8a06280"
    else
      url "https://github.com/janekbaraniewski/openusage/releases/download/v0.2.0/openusage_0.2.0_darwin_amd64.tar.gz"
      sha256 "38aa375535896d2bfd4a3b6c0d22dc9750f20bf54c31cddecff0167ffe449a7e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/janekbaraniewski/openusage/releases/download/v0.2.0/openusage_0.2.0_linux_arm64.tar.gz"
      sha256 "3918d0b756b5d64f1bbc5172d15b5791063b0b8bbcc7cb117b87a58637ee4157"
    else
      url "https://github.com/janekbaraniewski/openusage/releases/download/v0.2.0/openusage_0.2.0_linux_amd64.tar.gz"
      sha256 "816407e657c95e02984e94fb85ea8bd11b4e5fe8da8bf9c6b251ebd37cad23f5"
    end
  end

  def install
    bin.install "openusage"
  end

  test do
    assert_match "openusage", shell_output("#{bin}/openusage --version 2>&1", 0)
  end
end
