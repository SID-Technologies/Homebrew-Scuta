class Scuta < Formula
  desc "SID Developer Toolbox - install once, get everything"
  homepage "https://github.com/SID-Technologies/Scuta"
  version "0.2.0"
  license "BSL-1.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/SID-Technologies/Scuta/releases/download/v0.2.0/scuta_v0.2.0_darwin_arm64.tar.gz"
      sha256 "0c00ac54d0bd8abd723238770f0028b27444e47994300e550297e2b7b2ea68a0"
    else
      url "https://github.com/SID-Technologies/Scuta/releases/download/v0.2.0/scuta_v0.2.0_darwin_amd64.tar.gz"
      sha256 "095ca31c4cda5f3af7dee3cf6003be788fdb92709979e42f62ec00fb406ab8bf"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/SID-Technologies/Scuta/releases/download/v0.2.0/scuta_v0.2.0_linux_arm64.tar.gz"
      sha256 "b58fbe324b22ba20bbc38af4e7244480354c935b38dac240b9863ddf5db0a86d"
    else
      url "https://github.com/SID-Technologies/Scuta/releases/download/v0.2.0/scuta_v0.2.0_linux_amd64.tar.gz"
      sha256 "68c52d7791b2ab03cc8a7c62f28386f146c4e43f0a640e4dedfedd24a6e69b59"
    end
  end

  def install
    bin.install Dir["scuta_*"].first => "scuta"
  end

  test do
    system "#{bin}/scuta", "--version"
  end
end
