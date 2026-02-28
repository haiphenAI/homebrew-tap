class Haiphen < Formula
  desc "Local gateway + CLI for Haiphen"
  homepage "https://github.com/haiphenAI/haiphen-cli"
  version "0.2.8"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/haiphenAI/haiphen-cli/releases/download/v0.2.8/haiphen_0.2.8_darwin_arm64.tar.gz"
      sha256 "ec4d320344a305d6e13a7f1ff11a2b274e69ea6c431e741c525d209f1324d617"
    else
      url "https://github.com/haiphenAI/haiphen-cli/releases/download/v0.2.8/haiphen_0.2.8_darwin_amd64.tar.gz"
      sha256 "e1b167057032ba301b03f03447495707c22135bef45b63e95cbfa20d78dfd1e3"
    end
  end

  def install
    bin.install "haiphen"
  end

  test do
    assert_match "Haiphen", shell_output("#{bin}/haiphen --help")
  end
end
