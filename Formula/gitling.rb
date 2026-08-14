class Gitling < Formula
  desc "At-a-glance git repository dashboard for the terminal"
  homepage "https://github.com/lcondliffe/gitling"
  version "0.6.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/lcondliffe/gitling/releases/download/v0.6.0/gitling_v0.6.0_darwin_arm64.tar.gz"
      sha256 "d5d60b4bd1c93c30551f9347f90995c200f41610f7b80dd1958fdaa3bab051dc"
    else
      url "https://github.com/lcondliffe/gitling/releases/download/v0.6.0/gitling_v0.6.0_darwin_amd64.tar.gz"
      sha256 "f863047ea5357672131066980e5920f117f438ef45db906e743c8bb703beeffd"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/lcondliffe/gitling/releases/download/v0.6.0/gitling_v0.6.0_linux_arm64.tar.gz"
      sha256 "51e90579492d44c072826ab1e3db3620df1ebe6d48dadf34de69856fb9e37a74"
    else
      url "https://github.com/lcondliffe/gitling/releases/download/v0.6.0/gitling_v0.6.0_linux_amd64.tar.gz"
      sha256 "24cb49772e5ba2c8eaa73199727ba16125f0a2062db62ef313d73c0941b709ec"
    end
  end

  def install
    bin.install "gitling"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gitling --version")
  end
end
