class Gitling < Formula
  desc "At-a-glance git repository dashboard for the terminal"
  homepage "https://github.com/lcondliffe/gitling"
  version "0.5.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/lcondliffe/gitling/releases/download/v0.5.1/gitling_v0.5.1_darwin_arm64.tar.gz"
      sha256 "288986c93d2adb99ac4c2ff0a96f79e0c13414a0cf36a898d45ec92358b95844"
    else
      url "https://github.com/lcondliffe/gitling/releases/download/v0.5.1/gitling_v0.5.1_darwin_amd64.tar.gz"
      sha256 "81a552a14cb68e945a3e4a1168cd753f3b5eedfd7f2428a419c87a2bbd62b3c8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/lcondliffe/gitling/releases/download/v0.5.1/gitling_v0.5.1_linux_arm64.tar.gz"
      sha256 "791d71b6950ccb3480b0c00a0f0ba1baa60b90304113647c3af38d222cb90117"
    else
      url "https://github.com/lcondliffe/gitling/releases/download/v0.5.1/gitling_v0.5.1_linux_amd64.tar.gz"
      sha256 "767963823fc81c223bf754cc3428e6cbf545a236ce27f95c1096ca17c511a387"
    end
  end

  def install
    bin.install "gitling"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gitling --version")
  end
end
