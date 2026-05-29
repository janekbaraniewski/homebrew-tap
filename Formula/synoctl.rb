# typed: false
# frozen_string_literal: true

class Synoctl < Formula
  desc "A TUI-first management tool for Synology DSM"
  homepage "https://github.com/janekbaraniewski/synoctl"
  version "0.2.10"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/janekbaraniewski/synoctl/releases/download/v0.2.10/synoctl_0.2.10_darwin_arm64.tar.gz"
      sha256 "7c2baf7ee97ef923ea6f16b39b5100fe369cc17afcc7fae7799e8cbd6caddddc"
    else
      url "https://github.com/janekbaraniewski/synoctl/releases/download/v0.2.10/synoctl_0.2.10_darwin_amd64.tar.gz"
      sha256 "9c76dd2f9dbf68893e94d168284fc07db833b81d79cc80b40c6b09f0521eae40"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/janekbaraniewski/synoctl/releases/download/v0.2.10/synoctl_0.2.10_linux_arm64.tar.gz"
      sha256 "1fce3a3af09a038974174c2a52ca985b6ec0c602acab33400ce7e207c2de29e3"
    else
      url "https://github.com/janekbaraniewski/synoctl/releases/download/v0.2.10/synoctl_0.2.10_linux_amd64.tar.gz"
      sha256 "8b9d56cbb3ac7ca8c7b352df2598b9a8cd1f0eb5ecd127b1dae3a0b74ddda71f"
    end
  end

  def install
    bin.install "synoctl"
  end

  test do
    assert_match "synoctl", shell_output("#{bin}/synoctl version 2>&1", 0)
  end
end
