class Gitling < Formula
  desc "At-a-glance git repository dashboard for the terminal"
  homepage "https://github.com/lcondliffe/gitling"
  version "0.5.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/lcondliffe/gitling/releases/download/v0.5.3/gitling_v0.5.3_darwin_arm64.tar.gz"
      sha256 "c2e174183702fc65b42e29a2d1099a79d5a9cd43efcb8518baff45a69af55491"
    else
      url "https://github.com/lcondliffe/gitling/releases/download/v0.5.3/gitling_v0.5.3_darwin_amd64.tar.gz"
      sha256 "77ec705dae10ca5d7514e05a04a279c55521c439a4f42add2bad21eab8e97dae"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/lcondliffe/gitling/releases/download/v0.5.3/gitling_v0.5.3_linux_arm64.tar.gz"
      sha256 "9b01d33b81ba6469a0267e026e7493329d13f705c8d58d709a118e1a6f2ca335"
    else
      url "https://github.com/lcondliffe/gitling/releases/download/v0.5.3/gitling_v0.5.3_linux_amd64.tar.gz"
      sha256 "0d54a994edadc814c3f05cddc57a7a2925aeeb873dd662417612744c339e7d28"
    end
  end

  def install
    bin.install "gitling"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gitling --version")
  end
end
