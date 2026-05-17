# typed: false
# frozen_string_literal: true

class Synoctl < Formula
  desc "A TUI-first management tool for Synology DSM"
  homepage "https://github.com/janekbaraniewski/synology-ctl"
  version "0.1.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/janekbaraniewski/synology-ctl/releases/download/v0.1.3/synoctl_0.1.3_darwin_arm64.tar.gz"
      sha256 "b0615b7504a5bd4a4978ad6f3ff1ba29aeba0cd921e29a4e2f1c62bd51daff65"
    else
      url "https://github.com/janekbaraniewski/synology-ctl/releases/download/v0.1.3/synoctl_0.1.3_darwin_amd64.tar.gz"
      sha256 "d300a2bbadc1d5bac88cad183b9c91e8c21d44b97ce67e72d0b56d33ec768024"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/janekbaraniewski/synology-ctl/releases/download/v0.1.3/synoctl_0.1.3_linux_arm64.tar.gz"
      sha256 "20736977ab7c2c750847c276f4c85593d16475646a95cd641d1a32d1ef71ebe9"
    else
      url "https://github.com/janekbaraniewski/synology-ctl/releases/download/v0.1.3/synoctl_0.1.3_linux_amd64.tar.gz"
      sha256 "92d3b824d7027ba5306b68ce6e0732e7637e0cf2e08f1b4595040f487082befd"
    end
  end

  def install
    bin.install "synoctl"
  end

  test do
    assert_match "synoctl", shell_output("#{bin}/synoctl version 2>&1", 0)
  end
end
