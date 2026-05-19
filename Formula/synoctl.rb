# typed: false
# frozen_string_literal: true

class Synoctl < Formula
  desc "A TUI-first management tool for Synology DSM"
  homepage "https://github.com/janekbaraniewski/synoctl"
  version "0.2.7"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/janekbaraniewski/synoctl/releases/download/v0.2.7/synoctl_0.2.7_darwin_arm64.tar.gz"
      sha256 "8d6274a3740f4c5c45046ed59b76239f2a9b1a3c80a1408ba3450143b4a4ba9b"
    else
      url "https://github.com/janekbaraniewski/synoctl/releases/download/v0.2.7/synoctl_0.2.7_darwin_amd64.tar.gz"
      sha256 "7f4537e9199dfc6652f3e630ad3216bad83832f98f2cee0c2af6e591274ea0cd"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/janekbaraniewski/synoctl/releases/download/v0.2.7/synoctl_0.2.7_linux_arm64.tar.gz"
      sha256 "984911d88d62711dd2069195e65fdb83e4ea0381a129f658844809d26271c8e1"
    else
      url "https://github.com/janekbaraniewski/synoctl/releases/download/v0.2.7/synoctl_0.2.7_linux_amd64.tar.gz"
      sha256 "3ace9f28c412f5e430ca31f878a4a33a52fec2ce951f2434d595ade9d8afe03e"
    end
  end

  def install
    bin.install "synoctl"
  end

  test do
    assert_match "synoctl", shell_output("#{bin}/synoctl version 2>&1", 0)
  end
end
