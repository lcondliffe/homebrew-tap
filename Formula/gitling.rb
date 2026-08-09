class Gitling < Formula
  desc "At-a-glance git repository dashboard for the terminal"
  homepage "https://github.com/lcondliffe/gitling"
  version "0.5.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/lcondliffe/gitling/releases/download/v0.5.4/gitling_v0.5.4_darwin_arm64.tar.gz"
      sha256 "6d3bde56a346ef8fe51cf5d42dfb36ab550e39ab1090f008952a71cdeed5e4c5"
    else
      url "https://github.com/lcondliffe/gitling/releases/download/v0.5.4/gitling_v0.5.4_darwin_amd64.tar.gz"
      sha256 "ba45b37a98d6ccf2d118a85103392bf95645e4a10e8f6c9e864ae90f1c729a8e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/lcondliffe/gitling/releases/download/v0.5.4/gitling_v0.5.4_linux_arm64.tar.gz"
      sha256 "1827d5a91d2ff20e919c9a5928309d7ca93b5b79b429123c3d478cf157bc1f57"
    else
      url "https://github.com/lcondliffe/gitling/releases/download/v0.5.4/gitling_v0.5.4_linux_amd64.tar.gz"
      sha256 "270ad3e8eeb418f3fe9e67676368126ebc84af8b21e79cb5da6892b62582575b"
    end
  end

  def install
    bin.install "gitling"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gitling --version")
  end
end
