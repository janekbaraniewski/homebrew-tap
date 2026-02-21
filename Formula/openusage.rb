# typed: false
# frozen_string_literal: true

class Openusage < Formula
  desc "Monitor your AI coding tool quotas from a single TUI dashboard"
  homepage "https://github.com/janekbaraniewski/openusage"
  version "0.4.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/janekbaraniewski/openusage/releases/download/v0.4.0/openusage_0.4.0_darwin_arm64.tar.gz"
      sha256 "64ab5235be1121b705f57d156012365f74fc73154632bc8ec8e463681bb48905"
    else
      url "https://github.com/janekbaraniewski/openusage/releases/download/v0.4.0/openusage_0.4.0_darwin_amd64.tar.gz"
      sha256 "c98716d656c212b3dc4d1ea40a17818b62bab506d2065d3e61514dded8b67cd1"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/janekbaraniewski/openusage/releases/download/v0.4.0/openusage_0.4.0_linux_arm64.tar.gz"
      sha256 "c505960debf631ce8876342b0dc5c045d89a48878fdf7a5b3c770c3d6575bac8"
    else
      url "https://github.com/janekbaraniewski/openusage/releases/download/v0.4.0/openusage_0.4.0_linux_amd64.tar.gz"
      sha256 "c31a5f1f557da4f7c567ac4d9454731b216c0d40e8f697f1355188cec24c122a"
    end
  end

  def install
    bin.install "openusage"
  end

  test do
    assert_match "openusage", shell_output("#{bin}/openusage --version 2>&1", 0)
  end
end
