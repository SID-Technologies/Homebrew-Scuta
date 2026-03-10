class Scuta < Formula
  desc "SID Developer Toolbox - install once, get everything"
  homepage "https://github.com/SID-Technologies/Scuta"
  version "0.1.2"
  license "BSL-1.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/SID-Technologies/Scuta/releases/download/v0.1.2/scuta_v0.1.2_darwin_arm64.tar.gz"
      sha256 "bb34f229fe1a4512201435289dddb9bb329633cffa1a56071a9be660dcad8a7b"
    else
      url "https://github.com/SID-Technologies/Scuta/releases/download/v0.1.2/scuta_v0.1.2_darwin_amd64.tar.gz"
      sha256 "6d7da8b4759ecc8151a2df33eaf187d25af7522a529cd34c290d91f5f36bc73d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/SID-Technologies/Scuta/releases/download/v0.1.2/scuta_v0.1.2_linux_arm64.tar.gz"
      sha256 "9adf9c906cf66f3d8d05ea8860223ebf69d5d21ddaf837ac3eb4bdeb91a79de5"
    else
      url "https://github.com/SID-Technologies/Scuta/releases/download/v0.1.2/scuta_v0.1.2_linux_amd64.tar.gz"
      sha256 "6bf107e398551ca14792bb72bd3ee356dee5670d4e28ca063233d03562f1a32d"
    end
  end

  def install
    bin.install Dir["scuta_*"].first => "scuta"
  end

  test do
    system "#{bin}/scuta", "--version"
  end
end
