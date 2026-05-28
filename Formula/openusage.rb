# typed: false
# frozen_string_literal: true

class Openusage < Formula
  desc "Monitor your AI coding tool quotas from a single TUI dashboard"
  homepage "https://openusage.sh"
  version "0.13.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/janekbaraniewski/openusage/releases/download/v0.13.0/openusage_0.13.0_darwin_arm64.tar.gz"
      sha256 "24f45e07926c2904523ba6691b62f9a443dbc163bd21c2b74e814c4f7f14fe6c"
    else
      url "https://github.com/janekbaraniewski/openusage/releases/download/v0.13.0/openusage_0.13.0_darwin_amd64.tar.gz"
      sha256 "c333c56a28580a387b23fcc8ae3b69e8ebad1940e9a445f762aa99c2016ed8fd"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/janekbaraniewski/openusage/releases/download/v0.13.0/openusage_0.13.0_linux_arm64.tar.gz"
      sha256 "4149a9224f333429effffba2a169201e969002ce8259a2a12c6bd34f4aad1336"
    else
      url "https://github.com/janekbaraniewski/openusage/releases/download/v0.13.0/openusage_0.13.0_linux_amd64.tar.gz"
      sha256 "e60e10b7b73fb4016ef89a36f635bd2e2a9108d0dbeea0a3b7df557b979f25fc"
    end
  end

  def install
    bin.install "openusage"
  end

  test do
    assert_match "openusage", shell_output("#{bin}/openusage --version 2>&1", 0)
  end
end
