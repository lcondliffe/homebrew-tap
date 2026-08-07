class Gitling < Formula
  desc "At-a-glance git repository dashboard for the terminal"
  homepage "https://github.com/lcondliffe/gitling"
  version "0.5.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/lcondliffe/gitling/releases/download/v0.5.0/gitling_v0.5.0_darwin_arm64.tar.gz"
      sha256 "44976378f4da9ea8edb2b9a362c800f6efe5f53868aaaa9fa9325c92be668d7b"
    else
      url "https://github.com/lcondliffe/gitling/releases/download/v0.5.0/gitling_v0.5.0_darwin_amd64.tar.gz"
      sha256 "37844d280bb222e9c0bca261b4361f75ca6a8e721bd3a56f713b0a7c95cd3ee3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/lcondliffe/gitling/releases/download/v0.5.0/gitling_v0.5.0_linux_arm64.tar.gz"
      sha256 "797c3187e4f31703cdad6853ac8797fa93386f648c9d77dd8091e67af5016b20"
    else
      url "https://github.com/lcondliffe/gitling/releases/download/v0.5.0/gitling_v0.5.0_linux_amd64.tar.gz"
      sha256 "aa44c718369d9882bbb3f60e9884b470967e4de53d20a9b4a8df19a591234785"
    end
  end

  def install
    bin.install "gitling"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gitling --version")
  end
end
