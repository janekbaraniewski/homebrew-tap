# typed: false
# frozen_string_literal: true

class Openusage < Formula
  desc "Monitor your AI coding tool quotas from a single TUI dashboard"
  homepage "https://github.com/janekbaraniewski/openusage"
  version "0.9.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/janekbaraniewski/openusage/releases/download/v0.9.0/openusage_0.9.0_darwin_arm64.tar.gz"
      sha256 "f5791710741ff09d45fc2ffa6e352558a5eb5ee1c91d4b3f7455926c97682f14"
    else
      url "https://github.com/janekbaraniewski/openusage/releases/download/v0.9.0/openusage_0.9.0_darwin_amd64.tar.gz"
      sha256 "0a5a3666d6ec49e24768c7491daee587c343442cf222a02ef6facdb7caffe851"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/janekbaraniewski/openusage/releases/download/v0.9.0/openusage_0.9.0_linux_arm64.tar.gz"
      sha256 "546f2e4f8de23892bebbfeb46696ac16fa332eea59da48c1f8f00a55a4631e16"
    else
      url "https://github.com/janekbaraniewski/openusage/releases/download/v0.9.0/openusage_0.9.0_linux_amd64.tar.gz"
      sha256 "b0805df68e43fed43725db2f30b201c5070579d6807d6357a8ea3e6eae7c2f46"
    end
  end

  def install
    bin.install "openusage"
  end

  test do
    assert_match "openusage", shell_output("#{bin}/openusage --version 2>&1", 0)
  end
end
