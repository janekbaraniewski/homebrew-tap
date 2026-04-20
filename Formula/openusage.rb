# typed: false
# frozen_string_literal: true

class Openusage < Formula
  desc "Monitor your AI coding tool quotas from a single TUI dashboard"
  homepage "https://openusage.sh"
  version "0.9.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/janekbaraniewski/openusage/releases/download/v0.9.4/openusage_0.9.4_darwin_arm64.tar.gz"
      sha256 "b59d0580c5426cf86e7569ca809d79967742fe9ee6efc77a925e1947e9bdeec9"
    else
      url "https://github.com/janekbaraniewski/openusage/releases/download/v0.9.4/openusage_0.9.4_darwin_amd64.tar.gz"
      sha256 "fda82d07e2e59c525568bc552b68e5287d03234d640f5878c0a294e4bdc0896b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/janekbaraniewski/openusage/releases/download/v0.9.4/openusage_0.9.4_linux_arm64.tar.gz"
      sha256 "ec0821ab74103928a19c51fd9012bacb326df6bda58fca609b11275c4999f40c"
    else
      url "https://github.com/janekbaraniewski/openusage/releases/download/v0.9.4/openusage_0.9.4_linux_amd64.tar.gz"
      sha256 "00a95cf43824cbb8ca730308b8d3650073f461886cdaf216abc8a868611bc952"
    end
  end

  def install
    bin.install "openusage"
  end

  test do
    assert_match "openusage", shell_output("#{bin}/openusage --version 2>&1", 0)
  end
end
