class Scuta < Formula
  desc "SID Developer Toolbox - install once, get everything"
  homepage "https://github.com/SID-Technologies/Scuta"
  version "0.1.1"
  license "BSL-1.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/SID-Technologies/Scuta/releases/download/v0.1.1/scuta_v0.1.1_darwin_arm64.tar.gz"
      sha256 "0c265528359ed9abc627bc3d0d89d71fb7837d4ba4ec4377a7e6eed5bfc9c4a1"
    else
      url "https://github.com/SID-Technologies/Scuta/releases/download/v0.1.1/scuta_v0.1.1_darwin_amd64.tar.gz"
      sha256 "99e5bd88165eebff11c732812e8c3360097432b29e694e5fdfe0e31419b9e3a8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/SID-Technologies/Scuta/releases/download/v0.1.1/scuta_v0.1.1_linux_arm64.tar.gz"
      sha256 "7b0558e5ae8377e5ab7d17637277cb6e2fad7d4edef717291aa76e70d72212f4"
    else
      url "https://github.com/SID-Technologies/Scuta/releases/download/v0.1.1/scuta_v0.1.1_linux_amd64.tar.gz"
      sha256 "1afa33a7312d1aadd62d24702b5c36ea8000b9ea27530529dafd6489bfd8ecfa"
    end
  end

  def install
    bin.install Dir["scuta_*"].first => "scuta"
  end

  test do
    system "#{bin}/scuta", "--version"
  end
end
