# typed: false
# frozen_string_literal: true

class Openusage < Formula
  desc "Monitor your AI coding tool quotas from a single TUI dashboard"
  homepage "https://openusage.sh"
  version "0.18.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/janekbaraniewski/openusage/releases/download/v0.18.0/openusage_0.18.0_darwin_arm64.tar.gz"
      sha256 "e1bcf9c56fc60cd6daea3ac79bb44ee6a61219dcc60a485601b6fbd8f0519eef"
    else
      url "https://github.com/janekbaraniewski/openusage/releases/download/v0.18.0/openusage_0.18.0_darwin_amd64.tar.gz"
      sha256 "ce375d30a546bd2f6ce84eb5290dae296d89d5e6dc96451da36b50ea8f7ec30d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/janekbaraniewski/openusage/releases/download/v0.18.0/openusage_0.18.0_linux_arm64.tar.gz"
      sha256 "aebd75ed5a396bdc8e3a993c12faf4df6be8de81044fb53156556a2bdc820b63"
    else
      url "https://github.com/janekbaraniewski/openusage/releases/download/v0.18.0/openusage_0.18.0_linux_amd64.tar.gz"
      sha256 "64bdcb3fe31f60a8407bdd66de4ba0200fab455d708e5da39e9776a0b07c968e"
    end
  end

  def install
    bin.install "openusage"
  end

  test do
    assert_match "openusage", shell_output("#{bin}/openusage --version 2>&1", 0)
  end
end
