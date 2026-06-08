# typed: false
# frozen_string_literal: true

class Openusage < Formula
  desc "Monitor your AI coding tool quotas from a single TUI dashboard"
  homepage "https://openusage.sh"
  version "0.17.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/janekbaraniewski/openusage/releases/download/v0.17.0/openusage_0.17.0_darwin_arm64.tar.gz"
      sha256 "7a9aa9e2c8e8cf997f69b92b1b3e9ab0066bfa809e3ffa99c1bebb5d5660cc98"
    else
      url "https://github.com/janekbaraniewski/openusage/releases/download/v0.17.0/openusage_0.17.0_darwin_amd64.tar.gz"
      sha256 "17c92a50ea292d03ed97d1fd372329b74e473ea8a7a0c8d4cc32a1db33c55b7d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/janekbaraniewski/openusage/releases/download/v0.17.0/openusage_0.17.0_linux_arm64.tar.gz"
      sha256 "e5b16f002adabcc0b6596645f578306079694a9dd024aaa818c0ee2473017780"
    else
      url "https://github.com/janekbaraniewski/openusage/releases/download/v0.17.0/openusage_0.17.0_linux_amd64.tar.gz"
      sha256 "8f2f3b20a6a10ce74e6259a936968a8f479d12b4d9315b8b7b61a266c9e26a42"
    end
  end

  def install
    bin.install "openusage"
  end

  test do
    assert_match "openusage", shell_output("#{bin}/openusage --version 2>&1", 0)
  end
end
