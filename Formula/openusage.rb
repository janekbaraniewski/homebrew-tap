# typed: false
# frozen_string_literal: true

class Openusage < Formula
  desc "Monitor your AI coding tool quotas from a single TUI dashboard"
  homepage "https://openusage.sh"
  version "0.11.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/janekbaraniewski/openusage/releases/download/v0.11.0/openusage_0.11.0_darwin_arm64.tar.gz"
      sha256 "01a3f43b6d410fae1f1fb5e0a08d082be86ef53e19bafa4845736a61873d1d14"
    else
      url "https://github.com/janekbaraniewski/openusage/releases/download/v0.11.0/openusage_0.11.0_darwin_amd64.tar.gz"
      sha256 "143a67d7e82ab97705c4b4b86ab67803769ca5c58eb669627f084999d064055d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/janekbaraniewski/openusage/releases/download/v0.11.0/openusage_0.11.0_linux_arm64.tar.gz"
      sha256 "e44a60a3d364808c7c169bf34cbcad63255c1331f480fb878e90be54e2ee6ef1"
    else
      url "https://github.com/janekbaraniewski/openusage/releases/download/v0.11.0/openusage_0.11.0_linux_amd64.tar.gz"
      sha256 "d33bcff87f7f7b49c19ed77afa4cd16f6bec146769539f4aa4ad1f6c1e6da500"
    end
  end

  def install
    bin.install "openusage"
  end

  test do
    assert_match "openusage", shell_output("#{bin}/openusage --version 2>&1", 0)
  end
end
