# typed: false
# frozen_string_literal: true

class Openusage < Formula
  desc "Monitor your AI coding tool quotas from a single TUI dashboard"
  homepage "https://openusage.sh"
  version "0.10.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/janekbaraniewski/openusage/releases/download/v0.10.1/openusage_0.10.1_darwin_arm64.tar.gz"
      sha256 "fdeb70b8a18b075f16927b7e24e747281552a72bfe3c66eb6b7c453180fccd3f"
    else
      url "https://github.com/janekbaraniewski/openusage/releases/download/v0.10.1/openusage_0.10.1_darwin_amd64.tar.gz"
      sha256 "35fc96e012af5ad168891e94720e3ebc3fe7f7a95f0601bd9ce398a2e124c602"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/janekbaraniewski/openusage/releases/download/v0.10.1/openusage_0.10.1_linux_arm64.tar.gz"
      sha256 "4dadc636a40def3aef4c3e7d05666f265ad74ceb7ef5b2988062b08398f1db9e"
    else
      url "https://github.com/janekbaraniewski/openusage/releases/download/v0.10.1/openusage_0.10.1_linux_amd64.tar.gz"
      sha256 "fc57329e19a14b8b774436e72fe8110c59d7bfc3580f930618abb77943725ad8"
    end
  end

  def install
    bin.install "openusage"
  end

  test do
    assert_match "openusage", shell_output("#{bin}/openusage --version 2>&1", 0)
  end
end
