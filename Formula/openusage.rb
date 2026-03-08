# typed: false
# frozen_string_literal: true

class Openusage < Formula
  desc "Monitor your AI coding tool quotas from a single TUI dashboard"
  homepage "https://github.com/janekbaraniewski/openusage"
  version "0.6.11"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/janekbaraniewski/openusage/releases/download/v0.6.11/openusage_0.6.11_darwin_arm64.tar.gz"
      sha256 "6f9b96ac69a3f9b0d2e36bdc365bae81d882c06a16da8383940f96667072d5ce"
    else
      url "https://github.com/janekbaraniewski/openusage/releases/download/v0.6.11/openusage_0.6.11_darwin_amd64.tar.gz"
      sha256 "7d01978a9f514b5ebf25fd8f0bc007dee8981563dc8ad483addc247910a4ecb1"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/janekbaraniewski/openusage/releases/download/v0.6.11/openusage_0.6.11_linux_arm64.tar.gz"
      sha256 "7856d10a71146acccb8ce801da6dd2d665be5e8f1653b0185ecac4e38ffd9e01"
    else
      url "https://github.com/janekbaraniewski/openusage/releases/download/v0.6.11/openusage_0.6.11_linux_amd64.tar.gz"
      sha256 "249d376895f45669e948904184d497fabfdce38dc8087d765aa27fb3458d0210"
    end
  end

  def install
    bin.install "openusage"
  end

  test do
    assert_match "openusage", shell_output("#{bin}/openusage --version 2>&1", 0)
  end
end
