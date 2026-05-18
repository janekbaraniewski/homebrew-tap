# typed: false
# frozen_string_literal: true

class Synoctl < Formula
  desc "A TUI-first management tool for Synology DSM"
  homepage "https://github.com/janekbaraniewski/synoctl"
  version "0.2.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/janekbaraniewski/synoctl/releases/download/v0.2.2/synoctl_0.2.2_darwin_arm64.tar.gz"
      sha256 "cd55332f90b507597315e4d5f74ed13eb048b09f1a73df38878b5a09e8ae37ea"
    else
      url "https://github.com/janekbaraniewski/synoctl/releases/download/v0.2.2/synoctl_0.2.2_darwin_amd64.tar.gz"
      sha256 "69efb4603b01c7185ecae7c5ee9b1fbe90fa56a38ad9403441afa18a2d6158a2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/janekbaraniewski/synoctl/releases/download/v0.2.2/synoctl_0.2.2_linux_arm64.tar.gz"
      sha256 "01b89a15985f5f7d2c8c5e42d9fd4656c5bd965a8afde21b73e728c4e63facff"
    else
      url "https://github.com/janekbaraniewski/synoctl/releases/download/v0.2.2/synoctl_0.2.2_linux_amd64.tar.gz"
      sha256 "400767fff174a05c5263b17fc8519794766b837bf27312e867fe9c4bdfadd4ae"
    end
  end

  def install
    bin.install "synoctl"
  end

  test do
    assert_match "synoctl", shell_output("#{bin}/synoctl version 2>&1", 0)
  end
end
