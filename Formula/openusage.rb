# typed: false
# frozen_string_literal: true

class Openusage < Formula
  desc "Monitor your AI coding tool quotas from a single TUI dashboard"
  homepage "https://github.com/janekbaraniewski/openusage"
  version "0.5.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/janekbaraniewski/openusage/releases/download/v0.5.3/openusage_0.5.3_darwin_arm64.tar.gz"
      sha256 "675eaa3160d50eb54ccfc427bccbf2061813703ef83cf9484a40c76aad2032e0"
    else
      url "https://github.com/janekbaraniewski/openusage/releases/download/v0.5.3/openusage_0.5.3_darwin_amd64.tar.gz"
      sha256 "3dc46846f9df6ec702ce9f0b61618a791e4b5d85cdbe1df7d2a87ecf6dfd0891"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/janekbaraniewski/openusage/releases/download/v0.5.3/openusage_0.5.3_linux_arm64.tar.gz"
      sha256 "c9e29fcbd871b2dae3c831a2a04198075757e5635f03ddf866a1ed64e050f0fb"
    else
      url "https://github.com/janekbaraniewski/openusage/releases/download/v0.5.3/openusage_0.5.3_linux_amd64.tar.gz"
      sha256 "5e44ccec900a3b83d6a1734a3fe673f26c14b95d09c6fe7bfbf7453e903fac72"
    end
  end

  def install
    bin.install "openusage"
  end

  test do
    assert_match "openusage", shell_output("#{bin}/openusage --version 2>&1", 0)
  end
end
