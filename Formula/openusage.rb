# typed: false
# frozen_string_literal: true

class Openusage < Formula
  desc "Monitor your AI coding tool quotas from a single TUI dashboard"
  homepage "https://github.com/janekbaraniewski/openusage"
  version "0.1.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/janekbaraniewski/openusage/releases/download/v0.1.1/openusage_0.1.1_darwin_arm64.tar.gz"
      sha256 "5d253e351d7ed0fc871066bf8fb6a412529bba1052f7d72c0fd84399a04ac486"
    else
      url "https://github.com/janekbaraniewski/openusage/releases/download/v0.1.1/openusage_0.1.1_darwin_amd64.tar.gz"
      sha256 "88f2fccff99262c91095def5eadba7218ac2b7ec976e1d817c52d09e90704528"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/janekbaraniewski/openusage/releases/download/v0.1.1/openusage_0.1.1_linux_arm64.tar.gz"
      sha256 "b892e99a2cf7d8f8144515ef0d6d50442e37111800943214f160470d6dccbd24"
    else
      url "https://github.com/janekbaraniewski/openusage/releases/download/v0.1.1/openusage_0.1.1_linux_amd64.tar.gz"
      sha256 "d846e27883023e3dd8cff8860ac17466d2cbb282f87f1b4b4b6d574c797dee5c"
    end
  end

  def install
    bin.install "openusage"
  end

  test do
    assert_match "openusage", shell_output("#{bin}/openusage --version 2>&1", 0)
  end
end
