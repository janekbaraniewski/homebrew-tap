# typed: false
# frozen_string_literal: true

class Handover < Formula
  desc "Repo-local handover orchestration for coding agents"
  homepage "https://github.com/janekbaraniewski/handover"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/janekbaraniewski/handover/releases/download/v0.1.0/handover_0.1.0_darwin_arm64.tar.gz"
      sha256 "2b8b1d040fcbe6f2a53dd3c3f94973b481f69fbd2cc47b229f2e51ac228cc18d"
    else
      url "https://github.com/janekbaraniewski/handover/releases/download/v0.1.0/handover_0.1.0_darwin_x86_64.tar.gz"
      sha256 "6a8604689b1e619e7204e5280bb0995ed3065a2365f1c5d86fd38fd1641b4db9"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/janekbaraniewski/handover/releases/download/v0.1.0/handover_0.1.0_linux_arm64.tar.gz"
      sha256 "d7222dcdd163ba8929d94541146d6147fe828c1e1c16a8973665a4a5e61d57c4"
    else
      url "https://github.com/janekbaraniewski/handover/releases/download/v0.1.0/handover_0.1.0_linux_x86_64.tar.gz"
      sha256 "546dca34e5542a1b7d2d3fcff89bf4da692a504e4463c97b7d00196b972d0937"
    end
  end

  def install
    bin.install "handover"
  end

  test do
    assert_match "prompt-driven coding-agent handover CLI", shell_output("#{bin}/handover --help 2>&1", 1)
  end
end
