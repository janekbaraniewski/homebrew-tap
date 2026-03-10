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
      sha256 "1f98029cb4f68f730732736d50324ab14881e505c2f9562b8b7ba6ac0cebbc60"
    else
      url "https://github.com/janekbaraniewski/openusage/releases/download/v0.6.12/openusage_0.6.12_darwin_amd64.tar.gz"
      sha256 "8ea4f239e3818f25c401de195340afc89a9c14a6e002611673c43e9ccb7403d3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/janekbaraniewski/openusage/releases/download/v0.6.12/openusage_0.6.12_linux_arm64.tar.gz"
      sha256 "61e4207f75aa7de8e242806cc843dbab5ad69d05082ec8cfadc582debe63c21f"
    else
      url "https://github.com/janekbaraniewski/openusage/releases/download/v0.6.12/openusage_0.6.12_linux_amd64.tar.gz"
      sha256 "19e3cd69edca63effd07da172bff65e838d2983271608a3cb05d0a14ac2088ec"
    end
  end

  def install
    bin.install "openusage"
  end

  test do
    assert_match "openusage", shell_output("#{bin}/openusage --version 2>&1", 0)
  end
end
