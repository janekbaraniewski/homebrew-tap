# typed: false
# frozen_string_literal: true

class Synoctl < Formula
  desc "A TUI-first management tool for Synology DSM"
  homepage "https://github.com/janekbaraniewski/synoctl"
  version "0.2.8"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/janekbaraniewski/synoctl/releases/download/v0.2.8/synoctl_0.2.8_darwin_arm64.tar.gz"
      sha256 "a52d342c22968f9a210eae6006d30dc4a0f8e7c71f4c08b31fde6b99116e9374"
    else
      url "https://github.com/janekbaraniewski/synoctl/releases/download/v0.2.8/synoctl_0.2.8_darwin_amd64.tar.gz"
      sha256 "c14a195b8d9040c99721cb0306c31f24467d2ca3bd2f99b84a9749812fd2e7e4"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/janekbaraniewski/synoctl/releases/download/v0.2.8/synoctl_0.2.8_linux_arm64.tar.gz"
      sha256 "0e6603edb263d77c88d7295ebc026783a5c70993ba3dcfa43f31e96941684f68"
    else
      url "https://github.com/janekbaraniewski/synoctl/releases/download/v0.2.8/synoctl_0.2.8_linux_amd64.tar.gz"
      sha256 "f0560a74a7f2629e1a57bc718420c6388cac8bd870e259b188e7932c2f98da69"
    end
  end

  def install
    bin.install "synoctl"
  end

  test do
    assert_match "synoctl", shell_output("#{bin}/synoctl version 2>&1", 0)
  end
end
