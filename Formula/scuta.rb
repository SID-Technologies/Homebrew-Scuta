class Scuta < Formula
  desc "SID Developer Toolbox - install once, get everything"
  homepage "https://github.com/SID-Technologies/Scuta"
  version "1.1.0"
  license "BSL-1.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/SID-Technologies/Scuta/releases/download/v1.1.0/scuta_v1.1.0_darwin_arm64.tar.gz"
      sha256 "6217a6fc2eff93355fecd756649f9ab0e1921f4f40c0a86ad9dcbc7ed2dbe530"
    else
      url "https://github.com/SID-Technologies/Scuta/releases/download/v1.1.0/scuta_v1.1.0_darwin_amd64.tar.gz"
      sha256 "396969eed2710f241718943f2f237964ee663566a790e965cbec53c95433486b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/SID-Technologies/Scuta/releases/download/v1.1.0/scuta_v1.1.0_linux_arm64.tar.gz"
      sha256 "5de3b4e0ba8cbce7337d32d63fd618530a112b92270d8ca8e7edba10db952c87"
    else
      url "https://github.com/SID-Technologies/Scuta/releases/download/v1.1.0/scuta_v1.1.0_linux_amd64.tar.gz"
      sha256 "d6568f489a3a48c2f92b3939355f5e277d40d338446d1fefe50d01dfae4d6b0e"
    end
  end

  def install
    bin.install "scuta"
  end

  test do
    system "#{bin}/scuta", "--version"
  end
end
