class Gitling < Formula
  desc "At-a-glance git repository dashboard for the terminal"
  homepage "https://github.com/lcondliffe/gitling"
  version "0.5.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/lcondliffe/gitling/releases/download/v0.5.5/gitling_v0.5.5_darwin_arm64.tar.gz"
      sha256 "f2abf029859db6cdc7ca2a0d9343df4d666d740e5b101d977d9916b7e0cbba5d"
    else
      url "https://github.com/lcondliffe/gitling/releases/download/v0.5.5/gitling_v0.5.5_darwin_amd64.tar.gz"
      sha256 "e7fb30e7f30031206f4c8edb45737b31753e38ccc36dd60aa2889614dcc7b7f1"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/lcondliffe/gitling/releases/download/v0.5.5/gitling_v0.5.5_linux_arm64.tar.gz"
      sha256 "a6833bf81c952c2b98d52dc22e5b7f577a2464abb06834f90a50c653f0157337"
    else
      url "https://github.com/lcondliffe/gitling/releases/download/v0.5.5/gitling_v0.5.5_linux_amd64.tar.gz"
      sha256 "f19426b589e2dc4fb93cf9e0ee278e32fc9d50fa9141b8d83a41e76467d54e1c"
    end
  end

  def install
    bin.install "gitling"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gitling --version")
  end
end
