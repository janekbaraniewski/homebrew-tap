# typed: false
# frozen_string_literal: true

class Openusage < Formula
  desc "Monitor your AI coding tool quotas from a single TUI dashboard"
  homepage "https://openusage.sh"
  version "0.9.6"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/janekbaraniewski/openusage/releases/download/v0.9.6/openusage_0.9.6_darwin_arm64.tar.gz"
      sha256 "0cdc89ce50c89ef4b8bc43e075ec74bc8464f490206629b9f67a12b274e65bcd"
    else
      url "https://github.com/janekbaraniewski/openusage/releases/download/v0.9.6/openusage_0.9.6_darwin_amd64.tar.gz"
      sha256 "76839043936f594d55f980d1d2a66ff282618d318917853284d32e0549472086"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/janekbaraniewski/openusage/releases/download/v0.9.6/openusage_0.9.6_linux_arm64.tar.gz"
      sha256 "c2ec76ea10d632f5072a0d0af8744cd0e5b80a2bf92d341a5ed6a63ec7da0b91"
    else
      url "https://github.com/janekbaraniewski/openusage/releases/download/v0.9.6/openusage_0.9.6_linux_amd64.tar.gz"
      sha256 "818ad0307edb8c9070afe4d8336d278677673c1d05f44797d11a959743f38e5e"
    end
  end

  def install
    bin.install "openusage"
  end

  test do
    assert_match "openusage", shell_output("#{bin}/openusage --version 2>&1", 0)
  end
end
