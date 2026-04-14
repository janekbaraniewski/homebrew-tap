# typed: false
# frozen_string_literal: true

class Opencontext < Formula
  desc "Intercept, inspect, and edit live LLM context windows"
  homepage "https://github.com/janekbaraniewski/opencontext"
  version "0.0.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/janekbaraniewski/opencontext/releases/download/v0.0.1/opencontext_0.0.1_darwin_arm64.tar.gz"
      sha256 "338d98fa4e9d0f5ea0370d8343ff3b332ab5e870fb730027019b6c4b4a36a2e4"
    else
      url "https://github.com/janekbaraniewski/opencontext/releases/download/v0.0.1/opencontext_0.0.1_darwin_amd64.tar.gz"
      sha256 "da647befb33d2a518b0330a375775c5d921c7eb3c68a425d2ff273b02e012773"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/janekbaraniewski/opencontext/releases/download/v0.0.1/opencontext_0.0.1_linux_arm64.tar.gz"
      sha256 "ba7d9dd3c0c7e33845d4eb3ffe63d811beb47c7b98ba7aa09ead2a5ce779e1d6"
    else
      url "https://github.com/janekbaraniewski/opencontext/releases/download/v0.0.1/opencontext_0.0.1_linux_amd64.tar.gz"
      sha256 "33da68cedf876c67ceae61c90216b0a451ed7331e0ed5358063e0df37946722f"
    end
  end

  def install
    bin.install "octx"
  end

  test do
    assert_match "octx", shell_output("#{bin}/octx version 2>&1", 0)
  end
end
