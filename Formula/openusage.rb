# typed: false
# frozen_string_literal: true

class Openusage < Formula
  desc "Monitor your AI coding tool quotas from a single TUI dashboard"
  homepage "https://openusage.sh"
  version "0.19.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/janekbaraniewski/openusage/releases/download/v0.19.0/openusage_0.19.0_darwin_arm64.tar.gz"
      sha256 "736ce21b7b393f0fd39f1180e2467d59fb114765e395a6a02cca046c75165796"
    else
      url "https://github.com/janekbaraniewski/openusage/releases/download/v0.19.0/openusage_0.19.0_darwin_amd64.tar.gz"
      sha256 "68c571f3858b4c64d28854ee1e67fe66ade227e8f7deaf093d4a51c0c3de6d0f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/janekbaraniewski/openusage/releases/download/v0.19.0/openusage_0.19.0_linux_arm64.tar.gz"
      sha256 "e9f496d90f1874dda249f06c0aba3615f096be488fcd4eaeaf9da0fa9736cb66"
    else
      url "https://github.com/janekbaraniewski/openusage/releases/download/v0.19.0/openusage_0.19.0_linux_amd64.tar.gz"
      sha256 "dc88e0338ba0ea8e9e95970183869ce91b2c79af49f8340e5b3599d09e56140d"
    end
  end

  def install
    bin.install "openusage"
  end

  test do
    assert_match "openusage", shell_output("#{bin}/openusage --version 2>&1", 0)
  end
end
