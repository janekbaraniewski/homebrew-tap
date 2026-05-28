# typed: false
# frozen_string_literal: true

class Openusage < Formula
  desc "Monitor your AI coding tool quotas from a single TUI dashboard"
  homepage "https://openusage.sh"
  version "0.12.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/janekbaraniewski/openusage/releases/download/v0.12.0/openusage_0.12.0_darwin_arm64.tar.gz"
      sha256 "0576d4d7b983e746ed8c1e013922404f6b9aaffba3a4d9dc24c3a2c1f9fe2a41"
    else
      url "https://github.com/janekbaraniewski/openusage/releases/download/v0.12.0/openusage_0.12.0_darwin_amd64.tar.gz"
      sha256 "a5928bf1341a59bb775b8215b387372e75eac4763138765c04235d31d7d0efcb"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/janekbaraniewski/openusage/releases/download/v0.12.0/openusage_0.12.0_linux_arm64.tar.gz"
      sha256 "a4092a59e9c94f8980a1147fe3a8b81edc37f347914ff10f7fbe472d43af5e7c"
    else
      url "https://github.com/janekbaraniewski/openusage/releases/download/v0.12.0/openusage_0.12.0_linux_amd64.tar.gz"
      sha256 "651a6e346a87c7f5825b5559050ad571eac1b0f6a5d3411d0973df1182b02863"
    end
  end

  def install
    bin.install "openusage"
  end

  test do
    assert_match "openusage", shell_output("#{bin}/openusage --version 2>&1", 0)
  end
end
