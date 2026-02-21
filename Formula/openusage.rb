# typed: false
# frozen_string_literal: true

class Openusage < Formula
  desc "Monitor your AI coding tool quotas from a single TUI dashboard"
  homepage "https://github.com/janekbaraniewski/openusage"
  version "0.3.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/janekbaraniewski/openusage/releases/download/v0.3.0/openusage_0.3.0_darwin_arm64.tar.gz"
      sha256 "5db6df51c44f7dbc0082a0a50abb29e87b111be8952890d3abb84bb4f4d615f4"
    else
      url "https://github.com/janekbaraniewski/openusage/releases/download/v0.3.0/openusage_0.3.0_darwin_amd64.tar.gz"
      sha256 "807ee6697a51cd6592f0e46aee2efb241f8bbd427a784bd768462a42563efa36"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/janekbaraniewski/openusage/releases/download/v0.3.0/openusage_0.3.0_linux_arm64.tar.gz"
      sha256 "945586bbef7f73015229acb77e426204ca55f9aa2a91f91929fe34a6f1641ba4"
    else
      url "https://github.com/janekbaraniewski/openusage/releases/download/v0.3.0/openusage_0.3.0_linux_amd64.tar.gz"
      sha256 "50ba979afc75ef95ca73f7532ed957b54bbefd251e1277ff9cccf522a5ae5c1f"
    end
  end

  def install
    bin.install "openusage"
  end

  test do
    assert_match "openusage", shell_output("#{bin}/openusage --version 2>&1", 0)
  end
end
