# typed: false
# frozen_string_literal: true

class Openusage < Formula
  desc "Monitor your AI coding tool quotas from a single TUI dashboard"
  homepage "https://openusage.sh"
  version "0.15.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/janekbaraniewski/openusage/releases/download/v0.15.0/openusage_0.15.0_darwin_arm64.tar.gz"
      sha256 "36387f42b6b485adb0a17d66549aac9c2ff09e24926cfdd401bddb1b75e50d0f"
    else
      url "https://github.com/janekbaraniewski/openusage/releases/download/v0.15.0/openusage_0.15.0_darwin_amd64.tar.gz"
      sha256 "59045eca0828bfe88f0f0aea89907150272442c3f809dd7033b93bb45503635c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/janekbaraniewski/openusage/releases/download/v0.15.0/openusage_0.15.0_linux_arm64.tar.gz"
      sha256 "519d8d730d710b97ba1281335fc18b5118b565fe2e06e0d562428a4675dd4506"
    else
      url "https://github.com/janekbaraniewski/openusage/releases/download/v0.15.0/openusage_0.15.0_linux_amd64.tar.gz"
      sha256 "f7721bc606aad16bae5c74ba2e06d8342fa8ed29ed4b01961b0c46e09a692488"
    end
  end

  def install
    bin.install "openusage"
  end

  test do
    assert_match "openusage", shell_output("#{bin}/openusage --version 2>&1", 0)
  end
end
