# typed: false
# frozen_string_literal: true

class Openusage < Formula
  desc "Monitor your AI coding tool quotas from a single TUI dashboard"
  homepage "https://openusage.sh"
  version "0.10.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/janekbaraniewski/openusage/releases/download/v0.10.3/openusage_0.10.3_darwin_arm64.tar.gz"
      sha256 "0ae6d3ea066c7abbb0588b81fbc1af6024b30494e4128fe92750d542ee268c14"
    else
      url "https://github.com/janekbaraniewski/openusage/releases/download/v0.10.3/openusage_0.10.3_darwin_amd64.tar.gz"
      sha256 "66a946c86cdf2cae95de90b994761301a7ef4fb74dc16a46cb1130afd5e0cca9"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/janekbaraniewski/openusage/releases/download/v0.10.3/openusage_0.10.3_linux_arm64.tar.gz"
      sha256 "b5bbfbd9409c393124a350b552ff08af59e38fde103aa36b516132c831cc81a4"
    else
      url "https://github.com/janekbaraniewski/openusage/releases/download/v0.10.3/openusage_0.10.3_linux_amd64.tar.gz"
      sha256 "3226ec51611e2c75de47cde92a1f630fb160a3a97975f4e3abb9770950d7d0f5"
    end
  end

  def install
    bin.install "openusage"
  end

  test do
    assert_match "openusage", shell_output("#{bin}/openusage --version 2>&1", 0)
  end
end
