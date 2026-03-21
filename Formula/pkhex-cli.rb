class PkhexCli < Formula
  version "v1.3.0"
  desc "A CLI to manipulate pokemon game save files."
  homepage "https://github.com/arleypadua/PKHeX.Everywhere"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/arleypadua/PKHeX.Everywhere/releases/download/v1.3.0/pkhex-cli-osx-arm64.zip"
    sha256 "b32966dd53748924eb9b0cd90973fa4966f74e6c34a99ebebaaa343d4a11b38d"
  elsif OS.mac?
    url "https://github.com/arleypadua/PKHeX.Everywhere/releases/download/v1.3.0/pkhex-cli-osx-x64.zip"
    sha256 "56f11ba521cb6384f2c48e2ad9d6c5704dc6d03a3d250e490c1196b8fe80d9b5"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/arleypadua/PKHeX.Everywhere/releases/download/v1.3.0/pkhex-cli-linux-arm64.zip"
    sha256 "9cb98aec051206962d64e5b312f9d1978a4da88d64f891be216f419ddf147d0e"
  elsif OS.linux?
    url "https://github.com/arleypadua/PKHeX.Everywhere/releases/download/v1.3.0/pkhex-cli-linux-x64.zip"
    sha256 "e3ad7dfaeee2492fb16f98e232d16d02316c2decd7e7db8bae265bc12b068d6a"
  end

  def install
    bin.install "pkhex-cli"
  end

  test do
    system "#{bin}/pkhex-cli --version"
  end
end
