class Gitling < Formula
  desc "At-a-glance git repository dashboard for the terminal"
  homepage "https://github.com/lcondliffe/gitling"
  version "0.4.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/lcondliffe/gitling/releases/download/v0.4.0/gitling_v0.4.0_darwin_arm64.tar.gz"
      sha256 "3bd4daaed9d3f1baba3abb3adc3f330dd13a666c7557c3639165414318f6e5ce"
    else
      url "https://github.com/lcondliffe/gitling/releases/download/v0.4.0/gitling_v0.4.0_darwin_amd64.tar.gz"
      sha256 "d8440a4fa9fc6d6a4e71f8b166e6751326ef3c0d8de130eea9371ef11e464128"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/lcondliffe/gitling/releases/download/v0.4.0/gitling_v0.4.0_linux_arm64.tar.gz"
      sha256 "7a9252910efdc534d02b3c8ee9c84b21eb25f095de4a09b14485aa154eaa8545"
    else
      url "https://github.com/lcondliffe/gitling/releases/download/v0.4.0/gitling_v0.4.0_linux_amd64.tar.gz"
      sha256 "c0c144428faf1ce5c6a4bf3774a3fed7ad606de837a398e2c75d9bbfffec7375"
    end
  end

  def install
    bin.install "gitling"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gitling --version")
  end
end
