# typed: false
# frozen_string_literal: true

class Openusage < Formula
  desc "Monitor your AI coding tool quotas from a single TUI dashboard"
  homepage "https://github.com/janekbaraniewski/openusage"
  version "0.6.10"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/janekbaraniewski/openusage/releases/download/v0.6.10/openusage_0.6.10_darwin_arm64.tar.gz"
      sha256 "fd1c80d24a7d501cd7df7b1ec506b378cfe0a92da80581a06a58d532e543d44b"
    else
      url "https://github.com/janekbaraniewski/openusage/releases/download/v0.6.10/openusage_0.6.10_darwin_amd64.tar.gz"
      sha256 "1ba6a122b480d6c69de9b023af563379b820d8f47019827429beb62d4f7e2444"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/janekbaraniewski/openusage/releases/download/v0.6.10/openusage_0.6.10_linux_arm64.tar.gz"
      sha256 "4832fd5fd8c7bdaa6f9eaecac5d49b8ae0580c33474a6787f13d2039f43145f6"
    else
      url "https://github.com/janekbaraniewski/openusage/releases/download/v0.6.10/openusage_0.6.10_linux_amd64.tar.gz"
      sha256 "eeccacaf9cee3f0e6b26b0e1d209ed16ed868cee80c924b6177cab597d447bcb"
    end
  end

  def install
    bin.install "openusage"
  end

  test do
    assert_match "openusage", shell_output("#{bin}/openusage --version 2>&1", 0)
  end
end
