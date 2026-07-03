class Gitling < Formula
  desc "At-a-glance git repository dashboard for the terminal"
  homepage "https://github.com/lcondliffe/gitling"
  version "0.1.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/lcondliffe/gitling/releases/download/v0.1.1/gitling_v0.1.1_darwin_arm64.tar.gz"
      sha256 "67d43318f10bc8e964e2d31462266768a2c25e2c9e3a62edae29866694036915"
    else
      url "https://github.com/lcondliffe/gitling/releases/download/v0.1.1/gitling_v0.1.1_darwin_amd64.tar.gz"
      sha256 "16b3fd74e7e20b5bd482335033e26fa6db12aad9fa2064cd8d1d5d4c98fb2f11"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/lcondliffe/gitling/releases/download/v0.1.1/gitling_v0.1.1_linux_arm64.tar.gz"
      sha256 "811e3dacddf1087850bbe8dac320a969ef76e8b5594adbd1cd8d222d83fb143f"
    else
      url "https://github.com/lcondliffe/gitling/releases/download/v0.1.1/gitling_v0.1.1_linux_amd64.tar.gz"
      sha256 "4edab5b3f86622126d5c187413cc154710bdfd6d92dd46b7da12a89268d27276"
    end
  end

  def install
    bin.install "gitling"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gitling --version")
  end
end
