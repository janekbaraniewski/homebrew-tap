# typed: false
# frozen_string_literal: true

class Synoctl < Formula
  desc "A TUI-first management tool for Synology DSM"
  homepage "https://github.com/janekbaraniewski/synology-ctl"
  version "0.1.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/janekbaraniewski/synology-ctl/releases/download/v0.1.4/synoctl_0.1.4_darwin_arm64.tar.gz"
      sha256 "9c030dc704bdf127495db9d603b3a82010589ccc80ed16b9811dc5fe0c56fc33"
    else
      url "https://github.com/janekbaraniewski/synology-ctl/releases/download/v0.1.4/synoctl_0.1.4_darwin_amd64.tar.gz"
      sha256 "de5201441e75f2ab54aabf69596ce3684264775fb0028d3abcbbafec7b8c7ac5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/janekbaraniewski/synology-ctl/releases/download/v0.1.4/synoctl_0.1.4_linux_arm64.tar.gz"
      sha256 "45422ad3225b9e1eebaf0c39727b306755f103e29cb566f340bea5d094828bc1"
    else
      url "https://github.com/janekbaraniewski/synology-ctl/releases/download/v0.1.4/synoctl_0.1.4_linux_amd64.tar.gz"
      sha256 "290a5fbdcaaba039dff55eb1414568d6d50da27c9d7cb3f84ee643fea0f527f7"
    end
  end

  def install
    bin.install "synoctl"
  end

  test do
    assert_match "synoctl", shell_output("#{bin}/synoctl version 2>&1", 0)
  end
end
