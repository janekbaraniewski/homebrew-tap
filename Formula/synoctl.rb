# typed: false
# frozen_string_literal: true

class Synoctl < Formula
  desc "A TUI-first management tool for Synology DSM"
  homepage "https://github.com/janekbaraniewski/synoctl"
  version "0.2.9"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/janekbaraniewski/synoctl/releases/download/v0.2.9/synoctl_0.2.9_darwin_arm64.tar.gz"
      sha256 "85672bb4b838fdc4cf30689dbccb8accd1721bc7485a0a8d336e3ab82e869762"
    else
      url "https://github.com/janekbaraniewski/synoctl/releases/download/v0.2.9/synoctl_0.2.9_darwin_amd64.tar.gz"
      sha256 "47c78c2c3b7c5410e79d7070aeadd711636afb54b5730c724eacbf6187108d99"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/janekbaraniewski/synoctl/releases/download/v0.2.9/synoctl_0.2.9_linux_arm64.tar.gz"
      sha256 "2ad34cd950c238a7bc8d4e2fe332bf574f64ea6c72ce228ff2777ac2c5ddd379"
    else
      url "https://github.com/janekbaraniewski/synoctl/releases/download/v0.2.9/synoctl_0.2.9_linux_amd64.tar.gz"
      sha256 "371373a91e37cb2fbe208599410074323092bf110efc04aab4121319e18a850a"
    end
  end

  def install
    bin.install "synoctl"
  end

  test do
    assert_match "synoctl", shell_output("#{bin}/synoctl version 2>&1", 0)
  end
end
