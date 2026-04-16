# typed: false
# frozen_string_literal: true

class Openusage < Formula
  desc "Monitor your AI coding tool quotas from a single TUI dashboard"
  homepage "https://github.com/janekbaraniewski/openusage"
  version "0.9.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/janekbaraniewski/openusage/releases/download/v0.9.1/openusage_0.9.1_darwin_arm64.tar.gz"
      sha256 "6ccaa307955a448c453876ffd729370cef8878cdaa1bdf2332e49f4833ddf34d"
    else
      url "https://github.com/janekbaraniewski/openusage/releases/download/v0.9.1/openusage_0.9.1_darwin_amd64.tar.gz"
      sha256 "ff16fc576afd5e0f30a438788d1338aaf1f40f45597a560a139787a8729e2847"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/janekbaraniewski/openusage/releases/download/v0.9.1/openusage_0.9.1_linux_arm64.tar.gz"
      sha256 "c8688d083e4362424c2f4bea451ab6d46944e3876a1596743ee914cf7615cd29"
    else
      url "https://github.com/janekbaraniewski/openusage/releases/download/v0.9.1/openusage_0.9.1_linux_amd64.tar.gz"
      sha256 "4ff4c20349f0a141b218b0380da5570b36c3efcf0a4deeddc802aae36fba5dcb"
    end
  end

  def install
    bin.install "openusage"
  end

  test do
    assert_match "openusage", shell_output("#{bin}/openusage --version 2>&1", 0)
  end
end
