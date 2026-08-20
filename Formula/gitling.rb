class Gitling < Formula
  desc "At-a-glance git repository dashboard for the terminal"
  homepage "https://github.com/lcondliffe/gitling"
  version "0.6.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/lcondliffe/gitling/releases/download/v0.6.1/gitling_v0.6.1_darwin_arm64.tar.gz"
      sha256 "4b79dadd5648ca419a9bebd3d2f2acaee25fe29145ff0d02872e2eeff855001c"
    else
      url "https://github.com/lcondliffe/gitling/releases/download/v0.6.1/gitling_v0.6.1_darwin_amd64.tar.gz"
      sha256 "fba1b915a72963d8d79bfcc2e48c3ba6c9fdaf5342ce29f916b43da38d621b9a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/lcondliffe/gitling/releases/download/v0.6.1/gitling_v0.6.1_linux_arm64.tar.gz"
      sha256 "69dc973c1d48b6eacb4a46a0e5c8c65dc39515b90a4575a6efe637c970de9597"
    else
      url "https://github.com/lcondliffe/gitling/releases/download/v0.6.1/gitling_v0.6.1_linux_amd64.tar.gz"
      sha256 "a62b8c020b7cbb6a41b67000e6743dcd6c5cab78fc02e778f3423140c1901a4f"
    end
  end

  def install
    bin.install "gitling"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gitling --version")
  end
end
