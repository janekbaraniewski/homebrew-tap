# typed: false
# frozen_string_literal: true

class Openusage < Formula
  desc "Monitor your AI coding tool quotas from a single TUI dashboard"
  homepage "https://openusage.sh"
  version "0.19.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/janekbaraniewski/openusage/releases/download/v0.19.1/openusage_0.19.1_darwin_arm64.tar.gz"
      sha256 "578dc534e4ae78fd62753eb01985f7e9c11162c2c60f33abfb5258bb7f041dd4"
    else
      url "https://github.com/janekbaraniewski/openusage/releases/download/v0.19.1/openusage_0.19.1_darwin_amd64.tar.gz"
      sha256 "9a454ee0dd47d73235813be399ffc05b41533e8b32aff32739bd7dc443140ec9"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/janekbaraniewski/openusage/releases/download/v0.19.1/openusage_0.19.1_linux_arm64.tar.gz"
      sha256 "90fdf457ee55a4df19b15358759a984568bab55f0cf525545640fcf57982589c"
    else
      url "https://github.com/janekbaraniewski/openusage/releases/download/v0.19.1/openusage_0.19.1_linux_amd64.tar.gz"
      sha256 "25f4d200466eb91cf6ea4bc4a9fffddb5b1fd0715376b99333f892f572afa711"
    end
  end

  def install
    bin.install "openusage"
  end

  test do
    assert_match "openusage", shell_output("#{bin}/openusage --version 2>&1", 0)
  end
end
