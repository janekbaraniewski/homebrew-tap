# typed: false
# frozen_string_literal: true

class Synoctl < Formula
  desc "A TUI-first management tool for Synology DSM"
  homepage "https://github.com/janekbaraniewski/synoctl"
  version "0.2.6"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/janekbaraniewski/synoctl/releases/download/v0.2.6/synoctl_0.2.6_darwin_arm64.tar.gz"
      sha256 "dbaf80774ba989e86c275ca89c5e7e4ede291ca187ea50d64506c3b38be29b8d"
    else
      url "https://github.com/janekbaraniewski/synoctl/releases/download/v0.2.6/synoctl_0.2.6_darwin_amd64.tar.gz"
      sha256 "97fa210abea72e36e738068f65ec2c6e48676bfe57ae8220789bb63a23d5d717"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/janekbaraniewski/synoctl/releases/download/v0.2.6/synoctl_0.2.6_linux_arm64.tar.gz"
      sha256 "f7c3f72d34a1813b7ca894e3f834c75a94ddff2972ebe8bd62ccd80b9c66c431"
    else
      url "https://github.com/janekbaraniewski/synoctl/releases/download/v0.2.6/synoctl_0.2.6_linux_amd64.tar.gz"
      sha256 "7e979177dff003412f95c2e48c59a7f5c44684a76db3879be9cd8759a60378b5"
    end
  end

  def install
    bin.install "synoctl"
  end

  test do
    assert_match "synoctl", shell_output("#{bin}/synoctl version 2>&1", 0)
  end
end
