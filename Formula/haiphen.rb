class Haiphen < Formula
  desc "Local gateway + CLI for Haiphen"
  homepage "https://github.com/haiphenAI/haiphen-cli"
  version "0.2.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/haiphenAI/haiphen-cli/releases/download/v0.2.5/haiphen_0.2.5_darwin_arm64.tar.gz"
      sha256 "51bc00511fcde5bb0e931f9e721e642b18fffcf8fa5985890e724697bd694e61"
    else
      url "https://github.com/haiphenAI/haiphen-cli/releases/download/v0.2.5/haiphen_0.2.5_darwin_amd64.tar.gz"
      sha256 "e7e4ca3e3bdeaa46610c42114808338aefb933f9aa59bd24a8c4d3374f3f82a4"
    end
  end

  on_linux do
    url "https://github.com/haiphenAI/haiphen-cli/releases/download/v0.2.5/haiphen_0.2.5_linux_amd64.tar.gz"
    sha256 "8a73901af48aee1060e8d3c0c46811402f58b1928a13cb71d5e7d8d1cdf672b1"
  end

  def install
    bin.install Dir["haiphen"].first => "haiphen"
  end

  test do
    assert_match "Haiphen", shell_output("#{bin}/haiphen --help")
  end
end
