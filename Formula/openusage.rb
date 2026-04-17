# typed: false
# frozen_string_literal: true

class Openusage < Formula
  desc "Monitor your AI coding tool quotas from a single TUI dashboard"
  homepage "https://openusage.sh"
  version "0.9.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/janekbaraniewski/openusage/releases/download/v0.9.2/openusage_0.9.2_darwin_arm64.tar.gz"
      sha256 "49b617722063d242065c049fd96d45a448744c0718d1c6f916014eeeb9228d21"
    else
      url "https://github.com/janekbaraniewski/openusage/releases/download/v0.9.2/openusage_0.9.2_darwin_amd64.tar.gz"
      sha256 "d2776c47554c3abcadd8932020dde95e30291e548a79e2911da9ed6939508749"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/janekbaraniewski/openusage/releases/download/v0.9.2/openusage_0.9.2_linux_arm64.tar.gz"
      sha256 "07c9c14e06b9a8af7add00ac5e84de58bca9f4a8d2f3b111492b5d62703cef70"
    else
      url "https://github.com/janekbaraniewski/openusage/releases/download/v0.9.2/openusage_0.9.2_linux_amd64.tar.gz"
      sha256 "c2053059629dccaea8de1bd919541be24044b9258fc3a7887cb7d41aacbf7dc8"
    end
  end

  def install
    bin.install "openusage"
  end

  test do
    assert_match "openusage", shell_output("#{bin}/openusage --version 2>&1", 0)
  end
end
