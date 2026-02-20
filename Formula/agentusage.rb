# typed: false
# frozen_string_literal: true

class Agentusage < Formula
  desc "Monitor your AI coding tool quotas from a single TUI dashboard"
  homepage "https://github.com/janekbaraniewski/agentusage"
  version "0.0.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/janekbaraniewski/agentusage/releases/download/v0.0.1/agentusage_0.0.1_darwin_arm64.tar.gz"
      sha256 "24d7d9d0d1edf742d69d666035414a193bcd5dc47035dc5e70beba9583d34132"
    else
      url "https://github.com/janekbaraniewski/agentusage/releases/download/v0.0.1/agentusage_0.0.1_darwin_amd64.tar.gz"
      sha256 "4d99af7c500bc64c764eb149e90410d04cbbb883d397a31d8f13cfa15534ca9a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/janekbaraniewski/agentusage/releases/download/v0.0.1/agentusage_0.0.1_linux_arm64.tar.gz"
      sha256 "2df8282863911fb2f63fb964fd1361d6220e275fc11568ccd47a8e1760c85fa9"
    else
      url "https://github.com/janekbaraniewski/agentusage/releases/download/v0.0.1/agentusage_0.0.1_linux_amd64.tar.gz"
      sha256 "02b99bece206c66dab2b91c4ffbff5a26601ea68b4c6fe92c259410b720a607b"
    end
  end

  def install
    bin.install "agentusage"
  end

  test do
    assert_match "agentusage", shell_output("#{bin}/agentusage --version 2>&1", 0)
  end
end
