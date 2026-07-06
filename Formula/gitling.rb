class Gitling < Formula
  desc "At-a-glance git repository dashboard for the terminal"
  homepage "https://github.com/lcondliffe/gitling"
  version "0.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/lcondliffe/gitling/releases/download/v0.2.0/gitling_v0.2.0_darwin_arm64.tar.gz"
      sha256 "5557233e7d6c1fa59c7091904b02cd80811e71c777d5017595524cd797f1169f"
    else
      url "https://github.com/lcondliffe/gitling/releases/download/v0.2.0/gitling_v0.2.0_darwin_amd64.tar.gz"
      sha256 "de09302790b12f15d7193805e44a2fcc404a50a97c503db2a08f7b65dbbf1322"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/lcondliffe/gitling/releases/download/v0.2.0/gitling_v0.2.0_linux_arm64.tar.gz"
      sha256 "3392b12303b17e776d99fe9bd78b93707630864bb407364b1cf56ece1cecb27d"
    else
      url "https://github.com/lcondliffe/gitling/releases/download/v0.2.0/gitling_v0.2.0_linux_amd64.tar.gz"
      sha256 "e9236a74be0b354e7807df05b76441e131f336a85765df797548e0e59a2bca10"
    end
  end

  def install
    bin.install "gitling"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gitling --version")
  end
end
