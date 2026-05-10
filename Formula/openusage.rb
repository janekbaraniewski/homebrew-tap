# typed: false
# frozen_string_literal: true

class Openusage < Formula
  desc "Monitor your AI coding tool quotas from a single TUI dashboard"
  homepage "https://openusage.sh"
  version "0.10.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/janekbaraniewski/openusage/releases/download/v0.10.0/openusage_0.10.0_darwin_arm64.tar.gz"
      sha256 "f2ea6083161c23716bd7ce599beed54e9d17d51a13d103e0826ca395cfb52935"
    else
      url "https://github.com/janekbaraniewski/openusage/releases/download/v0.10.0/openusage_0.10.0_darwin_amd64.tar.gz"
      sha256 "a6a183bd9269986074d4469df83063cc0f1567138214c44a679d5c07c2df8f51"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/janekbaraniewski/openusage/releases/download/v0.10.0/openusage_0.10.0_linux_arm64.tar.gz"
      sha256 "571b76132b414d71dace6a4bd3f6795e44f1edacdd2b746e77ab4ad099142517"
    else
      url "https://github.com/janekbaraniewski/openusage/releases/download/v0.10.0/openusage_0.10.0_linux_amd64.tar.gz"
      sha256 "ec6f5e82cfc286e946f9baf733c031f26e2d1681bd57cd86b7b2e425cad02a74"
    end
  end

  def install
    bin.install "openusage"
  end

  test do
    assert_match "openusage", shell_output("#{bin}/openusage --version 2>&1", 0)
  end
end
