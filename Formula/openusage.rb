# typed: false
# frozen_string_literal: true

class Openusage < Formula
  desc "Monitor your AI coding tool quotas from a single TUI dashboard"
  homepage "https://github.com/janekbaraniewski/openusage"
  version "0.6.12"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/janekbaraniewski/openusage/releases/download/v0.6.12/openusage_0.6.12_darwin_arm64.tar.gz"
      sha256 "65ee8590352fdd4f05486662686f50d636515ad3f22bf155f95bdfd9fbcdfbd4"
    else
      url "https://github.com/janekbaraniewski/openusage/releases/download/v0.6.12/openusage_0.6.12_darwin_amd64.tar.gz"
      sha256 "6f6a1a16dca737ba14febc1af71f38d2ed327360de5fa140a99d9e3f55cd9179"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/janekbaraniewski/openusage/releases/download/v0.6.12/openusage_0.6.12_linux_arm64.tar.gz"
      sha256 "537ed6281b28374fe800cfbf17e5635688f2aacc31123f368e9c6428bfa7e6ec"
    else
      url "https://github.com/janekbaraniewski/openusage/releases/download/v0.6.12/openusage_0.6.12_linux_amd64.tar.gz"
      sha256 "ed94431a84efa55f8881d06c3e9c4ff335b65af531c9372e6bff02d07698e454"
    end
  end

  def install
    bin.install "openusage"
  end

  test do
    assert_match "openusage", shell_output("#{bin}/openusage --version 2>&1", 0)
  end
end
