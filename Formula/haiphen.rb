class Haiphen < Formula
  desc "Haiphen CLI — local gateway and command center for edge protocol intelligence"
  homepage "https://haiphen.io"
  license "MIT"

  # This formula is auto-updated by goreleaser on each release.
  # To install from source before a release exists:
  #   go install github.com/haiphenAI/haiphen-cli/cmd/haiphen@latest

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/haiphenAI/haiphen-cli/releases/latest/download/haiphen_darwin_arm64.tar.gz"
    else
      url "https://github.com/haiphenAI/haiphen-cli/releases/latest/download/haiphen_darwin_amd64.tar.gz"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/haiphenAI/haiphen-cli/releases/latest/download/haiphen_linux_arm64.tar.gz"
    else
      url "https://github.com/haiphenAI/haiphen-cli/releases/latest/download/haiphen_linux_amd64.tar.gz"
    end
  end

  def install
    bin.install "haiphen"
  end

  test do
    system "#{bin}/haiphen", "--help"
  end
end
