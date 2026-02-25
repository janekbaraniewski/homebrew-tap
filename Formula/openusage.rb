# typed: false
# frozen_string_literal: true

class Openusage < Formula
  desc "Monitor your AI coding tool quotas from a single TUI dashboard"
  homepage "https://github.com/janekbaraniewski/openusage"
  version "0.5.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/janekbaraniewski/openusage/releases/download/v0.5.4/openusage_0.5.4_darwin_arm64.tar.gz"
      sha256 "0ab9dd75a27610616e24d6afaa7e6231fe6986b74dfb53566a577339a072a86e"
    else
      url "https://github.com/janekbaraniewski/openusage/releases/download/v0.5.4/openusage_0.5.4_darwin_amd64.tar.gz"
      sha256 "a4d78966bccd749d7516e913dd33990a5ebf1f53284b41186d5e7323bdd84acf"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/janekbaraniewski/openusage/releases/download/v0.5.4/openusage_0.5.4_linux_arm64.tar.gz"
      sha256 "74e2ca293acb8b2015483ff329a286de69bf73e2f4cce11b71f9f3256ab78afc"
    else
      url "https://github.com/janekbaraniewski/openusage/releases/download/v0.5.4/openusage_0.5.4_linux_amd64.tar.gz"
      sha256 "731ec07fd6e705c7def05a8eb4b874e2146e67a6d8a086605b02ac2bd952114d"
    end
  end

  def install
    bin.install "openusage"
  end

  test do
    assert_match "openusage", shell_output("#{bin}/openusage --version 2>&1", 0)
  end
end
