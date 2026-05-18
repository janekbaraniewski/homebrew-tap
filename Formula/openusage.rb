# typed: false
# frozen_string_literal: true

class Openusage < Formula
  desc "Monitor your AI coding tool quotas from a single TUI dashboard"
  homepage "https://openusage.sh"
  version "0.10.6"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/janekbaraniewski/openusage/releases/download/v0.10.6/openusage_0.10.6_darwin_arm64.tar.gz"
      sha256 "a9949e02368cb50797767f1b7ede3aecce8f38addef9e1e9a30a82e79595cdf3"
    else
      url "https://github.com/janekbaraniewski/openusage/releases/download/v0.10.6/openusage_0.10.6_darwin_amd64.tar.gz"
      sha256 "cb11c090301b1f5f4a1d7ca10ccfdb32f23367d855bd06e4138e1bd2d7148ac8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/janekbaraniewski/openusage/releases/download/v0.10.6/openusage_0.10.6_linux_arm64.tar.gz"
      sha256 "424861ac3136327fe3c5332f27039ad5cb73c96b3c9edf97443644887056d1ac"
    else
      url "https://github.com/janekbaraniewski/openusage/releases/download/v0.10.6/openusage_0.10.6_linux_amd64.tar.gz"
      sha256 "dfbcd2dad00fe1f9124bb265e760ca5cad9c11ee3b143be846dcbf5574a41e21"
    end
  end

  def install
    bin.install "openusage"
  end

  test do
    assert_match "openusage", shell_output("#{bin}/openusage --version 2>&1", 0)
  end
end
