# typed: false
# frozen_string_literal: true

class Openusage < Formula
  desc "Monitor your AI coding tool quotas from a single TUI dashboard"
  homepage "https://github.com/janekbaraniewski/openusage"
  version "0.5.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/janekbaraniewski/openusage/releases/download/v0.5.0/openusage_0.5.0_darwin_arm64.tar.gz"
      sha256 "256d8e8930d382ae0a3cbec4ea8739b24cb8cecb65c0464722b4baff307c6e02"
    else
      url "https://github.com/janekbaraniewski/openusage/releases/download/v0.5.0/openusage_0.5.0_darwin_amd64.tar.gz"
      sha256 "8f9a2a7aedaeab9c111a3571988059d5169a4c6652fc0c9fd2cb5d638e718936"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/janekbaraniewski/openusage/releases/download/v0.5.0/openusage_0.5.0_linux_arm64.tar.gz"
      sha256 "ac212771c252e74088fea4e37d47a5e4fea5d69a711c5a2b4fb103da8feb994b"
    else
      url "https://github.com/janekbaraniewski/openusage/releases/download/v0.5.0/openusage_0.5.0_linux_amd64.tar.gz"
      sha256 "8e86ec0e7ef3135926217184ddb933011251cf6c8f5fa768c86154f401a195a6"
    end
  end

  def install
    bin.install "openusage"
  end

  test do
    assert_match "openusage", shell_output("#{bin}/openusage --version 2>&1", 0)
  end
end
