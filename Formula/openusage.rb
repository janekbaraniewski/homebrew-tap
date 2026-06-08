# typed: false
# frozen_string_literal: true

class Openusage < Formula
  desc "Monitor your AI coding tool quotas from a single TUI dashboard"
  homepage "https://openusage.sh"
  version "0.16.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/janekbaraniewski/openusage/releases/download/v0.16.0/openusage_0.16.0_darwin_arm64.tar.gz"
      sha256 "ffe47ac59d80d8e9642433b0c0b17a806753b643e109e39ce9c8c613fff4f411"
    else
      url "https://github.com/janekbaraniewski/openusage/releases/download/v0.16.0/openusage_0.16.0_darwin_amd64.tar.gz"
      sha256 "cef77fc9bf83eb3ff3a5e209c19fa8e34f06ec921a1a839d38697649f498b550"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/janekbaraniewski/openusage/releases/download/v0.16.0/openusage_0.16.0_linux_arm64.tar.gz"
      sha256 "181820468900ff87662e0afbce599c05680837e41404fac489a116db6815a47b"
    else
      url "https://github.com/janekbaraniewski/openusage/releases/download/v0.16.0/openusage_0.16.0_linux_amd64.tar.gz"
      sha256 "ddd3f1ccb250bdc791f629a9892f243e0e4763d0521b64cc930d487755cf8f39"
    end
  end

  def install
    bin.install "openusage"
  end

  test do
    assert_match "openusage", shell_output("#{bin}/openusage --version 2>&1", 0)
  end
end
