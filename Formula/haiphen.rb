class Haiphen < Formula
  desc "Local gateway + CLI for Haiphen"
  homepage "https://github.com/haiphenAI/haiphen-cli"
  version "0.2.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/haiphenAI/haiphen-cli/releases/download/v0.2.4/haiphen_0.2.4_darwin_arm64.tar.gz"
      sha256 "9b0e42c27165ba13f4d435d0f531f36603f2163f2235a79868ffc7cf02d653cb"
    else
      url "https://github.com/haiphenAI/haiphen-cli/releases/download/v0.2.4/haiphen_0.2.4_darwin_amd64.tar.gz"
      sha256 "8ede939174baf3101b244c529ae050f42ea134f614360a83af61302fac95a892"
    end
  end

  on_linux do
    url "https://github.com/haiphenAI/haiphen-cli/releases/download/v0.2.4/haiphen_0.2.4_linux_amd64.tar.gz"
    sha256 "beb5a0e90973b84f3afd4e44b7ba442fa6b464a3de96fa858290080b3d270d14"
  end

  def install
    bin.install Dir["haiphen"].first => "haiphen"
  end

  test do
    assert_match "Haiphen", shell_output("#{bin}/haiphen --help")
  end
end
