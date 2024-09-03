class PkhexCli < Formula
  version "v1.0.4"
  desc "A CLI to manipulate pokemon game save files."
  homepage "https://github.com/arleypadua/PKHeX.Everywhere"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/arleypadua/PKHeX.Everywhere/releases/download/v1.0.4/pkhex-cli-osx-arm64.zip"
    sha256 "1f3fc4ef13f8a3287a34cf318e56138abd821bf9ea6bc6252144549f9ff40bd6"
  elsif OS.mac?
    url "https://github.com/arleypadua/PKHeX.Everywhere/releases/download/v1.0.4/pkhex-cli-osx-x64.zip"
    sha256 "995f491e90caba0c6f3fabf9c95f3ee507dfc38f2573a99438d5430e26787f23"
  elsif OS.linux?
    url "https://github.com/arleypadua/PKHeX.Everywhere/releases/download/v1.0.4/pkhex-cli-linux-x64.zip"
    sha256 "9294f7c9ddf9e52bc9fd2c91ef983d5b33beda971d74a25166555cbe6844d8a1"
  end

  def install
    bin.install "pkhex-cli"
  end

  test do
    system "#{bin}/pkhex-cli --version"
  end
end
