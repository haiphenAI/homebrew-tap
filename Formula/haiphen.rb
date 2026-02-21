class Haiphen < Formula
  desc "Local gateway + CLI for Haiphen"
  homepage "https://github.com/haiphenAI/haiphen-cli"
  version "0.2.6"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/haiphenAI/haiphen-cli/releases/download/v0.2.6/haiphen_0.2.6_darwin_arm64.tar.gz"
      sha256 "574aabc0924625bb21c70b6d64f94dfe9f3b7acd8deb51cd4f47b791c71c7443"
    else
      url "https://github.com/haiphenAI/haiphen-cli/releases/download/v0.2.6/haiphen_0.2.6_darwin_amd64.tar.gz"
      sha256 "e7143b5d553cd15e69f20da20cf450ff4bdd632bc4445fb32b9f37a7e5dc8515"
    end
  end

  on_linux do
    url "https://github.com/haiphenAI/haiphen-cli/releases/download/v0.2.6/haiphen_0.2.6_linux_amd64.tar.gz"
    sha256 "b691c17d022c7a9a0f150fd297377111354394e3aada50515c2a8c698b580321"
  end

  def install
    bin.install Dir["haiphen"].first => "haiphen"
  end

  test do
    assert_match "Haiphen", shell_output("#{bin}/haiphen --help")
  end
end
