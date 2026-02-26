# typed: false
# frozen_string_literal: true

class Openusage < Formula
  desc "Monitor your AI coding tool quotas from a single TUI dashboard"
  homepage "https://github.com/janekbaraniewski/openusage"
  version "0.5.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/janekbaraniewski/openusage/releases/download/v0.5.5/openusage_0.5.5_darwin_arm64.tar.gz"
      sha256 "b65e4db23c48922e2f4aa15d7da2dcbd1388b777f9ccfc56e66123189e27bc3c"
    else
      url "https://github.com/janekbaraniewski/openusage/releases/download/v0.5.5/openusage_0.5.5_darwin_amd64.tar.gz"
      sha256 "e82f6f62a73a798b27198ab98ca1e19e4396ffea0eddd33378cf5efa9de9a376"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/janekbaraniewski/openusage/releases/download/v0.5.5/openusage_0.5.5_linux_arm64.tar.gz"
      sha256 "012aba5ea3bcbb794062a5e5cc0905dee3162ecfdc124ed27d27b408a823151c"
    else
      url "https://github.com/janekbaraniewski/openusage/releases/download/v0.5.5/openusage_0.5.5_linux_amd64.tar.gz"
      sha256 "1a1c9845f5223a930316200ecd4eed2d6618ffce3436e6620136021bfaf8417e"
    end
  end

  def install
    bin.install "openusage"
  end

  test do
    assert_match "openusage", shell_output("#{bin}/openusage --version 2>&1", 0)
  end
end
