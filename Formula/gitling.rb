class Gitling < Formula
  desc "At-a-glance git repository dashboard for the terminal"
  homepage "https://github.com/lcondliffe/gitling"
  version "0.5.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/lcondliffe/gitling/releases/download/v0.5.2/gitling_v0.5.2_darwin_arm64.tar.gz"
      sha256 "dee65c1cd64b1f38cb8bcc2ebdc81f04e873663ab72e1f0ca1ffa39e9d4a0354"
    else
      url "https://github.com/lcondliffe/gitling/releases/download/v0.5.2/gitling_v0.5.2_darwin_amd64.tar.gz"
      sha256 "2ff75c292a285bf8c925b4c163133d842ee9e185d8aff70d5f7cb181d9fe4d9a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/lcondliffe/gitling/releases/download/v0.5.2/gitling_v0.5.2_linux_arm64.tar.gz"
      sha256 "54cb24778aad6fa3d3825b84d39fdcd1454b5ca7c62a66b9143483a6e17ab8ef"
    else
      url "https://github.com/lcondliffe/gitling/releases/download/v0.5.2/gitling_v0.5.2_linux_amd64.tar.gz"
      sha256 "0687597c9f98539a1c17994ee841e24c995a3d13addf3e9480a7cb1a162a4ee2"
    end
  end

  def install
    bin.install "gitling"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gitling --version")
  end
end
