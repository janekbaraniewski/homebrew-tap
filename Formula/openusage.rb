# typed: false
# frozen_string_literal: true

class Openusage < Formula
  desc "Monitor your AI coding tool quotas from a single TUI dashboard"
  homepage "https://github.com/janekbaraniewski/openusage"
  version "0.5.8"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/janekbaraniewski/openusage/releases/download/v0.5.8/openusage_0.5.8_darwin_arm64.tar.gz"
      sha256 "c5df1206491a087daa8e27e8117c8ae5223501881a2cda7a0cdf8632871ca630"
    else
      url "https://github.com/janekbaraniewski/openusage/releases/download/v0.5.8/openusage_0.5.8_darwin_amd64.tar.gz"
      sha256 "a8f35896db998b3cfca790dc9effcb0e86c456e7b780e5ae7c19e7fae15014b9"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/janekbaraniewski/openusage/releases/download/v0.5.8/openusage_0.5.8_linux_arm64.tar.gz"
      sha256 "44291d9a3d72c5e0023338ec16ded92ec0311ccc62a51647122c5e2b664dcae2"
    else
      url "https://github.com/janekbaraniewski/openusage/releases/download/v0.5.8/openusage_0.5.8_linux_amd64.tar.gz"
      sha256 "ddd80f38aa93705e9d9fc15595f516c535c1201c044cbd06f26071111432523b"
    end
  end

  def install
    bin.install "openusage"
  end

  test do
    assert_match "openusage", shell_output("#{bin}/openusage --version 2>&1", 0)
  end
end
