class Gitling < Formula
  desc "At-a-glance git repository dashboard for the terminal"
  homepage "https://github.com/lcondliffe/gitling"
  version "0.3.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/lcondliffe/gitling/releases/download/v0.3.0/gitling_v0.3.0_darwin_arm64.tar.gz"
      sha256 "a388f8ff3e7a105e5035f3c03e637fee0c1a34751e11b7687cbc184bec77480f"
    else
      url "https://github.com/lcondliffe/gitling/releases/download/v0.3.0/gitling_v0.3.0_darwin_amd64.tar.gz"
      sha256 "4c83447776de5f616a93d6dbceb33cd69032eaf7f872cb42f9377ea6694ca3e4"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/lcondliffe/gitling/releases/download/v0.3.0/gitling_v0.3.0_linux_arm64.tar.gz"
      sha256 "de6bf4bbe0a6aaf3a6fad9aa7b0d9332d03a50ee9831c8409ef165b520975998"
    else
      url "https://github.com/lcondliffe/gitling/releases/download/v0.3.0/gitling_v0.3.0_linux_amd64.tar.gz"
      sha256 "775ae72c5d844ffa0826cf615bb9d44caab7215a74a4793dc0e58347fe4a5791"
    end
  end

  def install
    bin.install "gitling"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gitling --version")
  end
end
