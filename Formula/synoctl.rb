# typed: false
# frozen_string_literal: true

class Synoctl < Formula
  desc "A TUI-first management tool for Synology DSM"
  homepage "https://github.com/janekbaraniewski/synoctl"
  version "0.2.12"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/janekbaraniewski/synoctl/releases/download/v0.2.12/synoctl_0.2.12_darwin_arm64.tar.gz"
      sha256 "a07cc35da82c9167c4fa3f41430c61fe1022fea704dc29352b10c76003945b7d"
    else
      url "https://github.com/janekbaraniewski/synoctl/releases/download/v0.2.12/synoctl_0.2.12_darwin_amd64.tar.gz"
      sha256 "b45c2ec115689a7148ab8a3e5cd08b06dfc642007649eb1bd529bb6857546306"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/janekbaraniewski/synoctl/releases/download/v0.2.12/synoctl_0.2.12_linux_arm64.tar.gz"
      sha256 "05098037952755da54d91929e67b1293c161568f932447e575992ead104df502"
    else
      url "https://github.com/janekbaraniewski/synoctl/releases/download/v0.2.12/synoctl_0.2.12_linux_amd64.tar.gz"
      sha256 "4782a094170b4b7e6511a435c07742525239fdafe4dab2b114b8154abfadf9fc"
    end
  end

  def install
    bin.install "synoctl"
  end

  test do
    assert_match "synoctl", shell_output("#{bin}/synoctl version 2>&1", 0)
  end
end
