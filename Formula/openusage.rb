# typed: false
# frozen_string_literal: true

class Openusage < Formula
  desc "Monitor your AI coding tool quotas from a single TUI dashboard"
  homepage "https://openusage.sh"
  version "0.14.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/janekbaraniewski/openusage/releases/download/v0.14.0/openusage_0.14.0_darwin_arm64.tar.gz"
      sha256 "cd5b046339cbe842f8e0c7c1b7568f85379e68c923cab412ea71f9d885a7c0ec"
    else
      url "https://github.com/janekbaraniewski/openusage/releases/download/v0.14.0/openusage_0.14.0_darwin_amd64.tar.gz"
      sha256 "437a07f382f1fba185e5bf4b9e558f94146ab433bff8a5f6b4c83f6a02c7dbd5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/janekbaraniewski/openusage/releases/download/v0.14.0/openusage_0.14.0_linux_arm64.tar.gz"
      sha256 "db4bb9f2e9af9330e8fa6b64f22e3ffea9f7a8fa3a6ed7632f4b94e4d2669e5a"
    else
      url "https://github.com/janekbaraniewski/openusage/releases/download/v0.14.0/openusage_0.14.0_linux_amd64.tar.gz"
      sha256 "da7bf5034a2958ea994b6f4d6f4330b4287041e08492f847e855c015d8daf31a"
    end
  end

  def install
    bin.install "openusage"
  end

  test do
    assert_match "openusage", shell_output("#{bin}/openusage --version 2>&1", 0)
  end
end
