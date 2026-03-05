# typed: false
# frozen_string_literal: true

class Openusage < Formula
  desc "Monitor your AI coding tool quotas from a single TUI dashboard"
  homepage "https://github.com/janekbaraniewski/openusage"
  version "0.6.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/janekbaraniewski/openusage/releases/download/v0.6.2/openusage_0.6.2_darwin_arm64.tar.gz"
      sha256 "25d5abdbfaad7e02db5c0761dabb78ccee0fab1731f229936d5f03bbde38505d"
    else
      url "https://github.com/janekbaraniewski/openusage/releases/download/v0.6.2/openusage_0.6.2_darwin_amd64.tar.gz"
      sha256 "d3210d67fcbd348e7b9ef97b34802af105ba010d52631e37414c7be3d2f38f9e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/janekbaraniewski/openusage/releases/download/v0.6.2/openusage_0.6.2_linux_arm64.tar.gz"
      sha256 "ce8a9d894eadd4fe40d0811324cfa6e2391f969641e2b02b27c1491d4203a853"
    else
      url "https://github.com/janekbaraniewski/openusage/releases/download/v0.6.2/openusage_0.6.2_linux_amd64.tar.gz"
      sha256 "064a61281a0329ae19c1dd19688e33c4b7fc71a670317193c9da54e689f24347"
    end
  end

  def install
    bin.install "openusage"
  end

  test do
    assert_match "openusage", shell_output("#{bin}/openusage --version 2>&1", 0)
  end
end
