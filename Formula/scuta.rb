class Scuta < Formula
  desc "SID Developer Toolbox - install once, get everything"
  homepage "https://github.com/SID-Technologies/Scuta"
  version "1.0.0"
  license "BSL-1.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/SID-Technologies/Scuta/releases/download/v1.0.0/scuta_v1.0.0_darwin_arm64.tar.gz"
      sha256 "df5384b9e547c1042db44800e1ae0f28b0c3bef0ef9cb6bc041c343fa787abb0"
    else
      url "https://github.com/SID-Technologies/Scuta/releases/download/v1.0.0/scuta_v1.0.0_darwin_amd64.tar.gz"
      sha256 "87393d9dc26b74adce2caf9be0f613aa4e9b59e2edb57b30fc6433c46a97f1eb"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/SID-Technologies/Scuta/releases/download/v1.0.0/scuta_v1.0.0_linux_arm64.tar.gz"
      sha256 "f23a75eb4986022e0e8953ba7328514f02d36d1dd1ca427a9f86476e705ae51f"
    else
      url "https://github.com/SID-Technologies/Scuta/releases/download/v1.0.0/scuta_v1.0.0_linux_amd64.tar.gz"
      sha256 "11d39bb46b0329087e3c5035ce7b9b31e8c2937d2e16c8d6f006d8b45bc5c18c"
    end
  end

  def install
    bin.install "scuta"
  end

  test do
    system "#{bin}/scuta", "--version"
  end
end
