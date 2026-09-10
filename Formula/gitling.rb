class Gitling < Formula
  desc "At-a-glance git repository dashboard for the terminal"
  homepage "https://github.com/lcondliffe/gitling"
  version "0.6.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/lcondliffe/gitling/releases/download/v0.6.2/gitling_v0.6.2_darwin_arm64.tar.gz"
      sha256 "e1dcbacc41cb9e3f5f6c940e202b49b01d7de2f489cf4b609494f74f98a525ce"
    else
      url "https://github.com/lcondliffe/gitling/releases/download/v0.6.2/gitling_v0.6.2_darwin_amd64.tar.gz"
      sha256 "65b65c6ad47e4de5750c661a838ad2996dcf840737d452f98fd9df16a475d744"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/lcondliffe/gitling/releases/download/v0.6.2/gitling_v0.6.2_linux_arm64.tar.gz"
      sha256 "ba3fcd1229076213f64fc11b6c6ab0c2c27bb302744766a18a50f0671b334466"
    else
      url "https://github.com/lcondliffe/gitling/releases/download/v0.6.2/gitling_v0.6.2_linux_amd64.tar.gz"
      sha256 "a0ce4545014ed0a07ddab6ba3298e726c9015c6f393309fb6d31f2ec50bf8cba"
    end
  end

  def install
    bin.install "gitling"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gitling --version")
  end
end
