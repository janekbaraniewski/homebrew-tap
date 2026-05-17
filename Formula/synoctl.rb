# typed: false
# frozen_string_literal: true

class Synoctl < Formula
  desc "A TUI-first management tool for Synology DSM"
  homepage "https://github.com/janekbaraniewski/synology-ctl"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/janekbaraniewski/synology-ctl/releases/download/v0.1.0/synoctl_0.1.0_darwin_arm64.tar.gz"
      sha256 "02a324f07f45aee874d681a7ba11e73134f0f29f9d0a36717f96e3a5ed03fcea"
    else
      url "https://github.com/janekbaraniewski/synology-ctl/releases/download/v0.1.0/synoctl_0.1.0_darwin_amd64.tar.gz"
      sha256 "b5c4308e33b62323dea978b93876c37759aedc056731d7ca8013fcb4b3173cfc"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/janekbaraniewski/synology-ctl/releases/download/v0.1.0/synoctl_0.1.0_linux_arm64.tar.gz"
      sha256 "4fda7440935b8379a9bc2e9cf7e32959f4952d353ba2b3d2252cfea50277e64e"
    else
      url "https://github.com/janekbaraniewski/synology-ctl/releases/download/v0.1.0/synoctl_0.1.0_linux_amd64.tar.gz"
      sha256 "f7f90479fa965df3889a2766d6658b1d535e739d4ede045dade865b6a8461470"
    end
  end

  def install
    bin.install "synoctl"
  end

  test do
    assert_match "synoctl", shell_output("#{bin}/synoctl version 2>&1", 0)
  end
end
