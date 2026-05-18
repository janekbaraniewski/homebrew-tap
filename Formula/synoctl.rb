# typed: false
# frozen_string_literal: true

class Synoctl < Formula
  desc "A TUI-first management tool for Synology DSM"
  homepage "https://github.com/janekbaraniewski/synoctl"
  version "0.2.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/janekbaraniewski/synoctl/releases/download/v0.2.4/synoctl_0.2.4_darwin_arm64.tar.gz"
      sha256 "119093b78d9f9593c108d9b79993243235d61b2eb25726d1e5e5bed44728600f"
    else
      url "https://github.com/janekbaraniewski/synoctl/releases/download/v0.2.4/synoctl_0.2.4_darwin_amd64.tar.gz"
      sha256 "b78ecc133267b9599433adb5632d3ecbfc0bbb0e23e22933070050e685d3fa40"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/janekbaraniewski/synoctl/releases/download/v0.2.4/synoctl_0.2.4_linux_arm64.tar.gz"
      sha256 "b61e49ecf6e614eb0fa48d24640b7ce7dd0b2cf58b5197fc91f63351b3837a94"
    else
      url "https://github.com/janekbaraniewski/synoctl/releases/download/v0.2.4/synoctl_0.2.4_linux_amd64.tar.gz"
      sha256 "8d93885b0a07ca1e3333ba8e1bbbd1e145f3aad5bf3c0f150cebbe1e9d5fe47c"
    end
  end

  def install
    bin.install "synoctl"
  end

  test do
    assert_match "synoctl", shell_output("#{bin}/synoctl version 2>&1", 0)
  end
end
