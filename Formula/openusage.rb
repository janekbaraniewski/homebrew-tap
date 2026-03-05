# typed: false
# frozen_string_literal: true

class Openusage < Formula
  desc "Monitor your AI coding tool quotas from a single TUI dashboard"
  homepage "https://github.com/janekbaraniewski/openusage"
  version "0.6.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/janekbaraniewski/openusage/releases/download/v0.6.5/openusage_0.6.5_darwin_arm64.tar.gz"
      sha256 "e7c464b0577c180d7abca7d46b3e75fd6c71f9e2716fa168598e23c3d5d29119"
    else
      url "https://github.com/janekbaraniewski/openusage/releases/download/v0.6.5/openusage_0.6.5_darwin_amd64.tar.gz"
      sha256 "5427d745f24edc59326cee3769820afe1e3d25f5c9b39889c19b54880d30dcf8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/janekbaraniewski/openusage/releases/download/v0.6.5/openusage_0.6.5_linux_arm64.tar.gz"
      sha256 "c17147fff9a07866e6d2f54b9257d3c0f86403a1705cad44388545a7244fabc4"
    else
      url "https://github.com/janekbaraniewski/openusage/releases/download/v0.6.5/openusage_0.6.5_linux_amd64.tar.gz"
      sha256 "83eff1313fb203bcacf3325886d86af61d5be1e275ff249362f252797cbf21b2"
    end
  end

  def install
    bin.install "openusage"
  end

  test do
    assert_match "openusage", shell_output("#{bin}/openusage --version 2>&1", 0)
  end
end
