class PkhexCli < Formula
  version "v0.6.1"
  desc "A CLI to manipulate pokemon game save files."
  homepage "https://github.com/arleypadua/PKHeX.Everywhere"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/arleypadua/PKHeX.Everywhere/releases/download/v0.6.1/pkhex-cli-osx-arm64.zip"
    sha256 "04251838a55f1acc99961a9cbcf155840f23f51954533fc68e3e20ddb618863b"
  elsif OS.mac?
    url "https://github.com/arleypadua/PKHeX.Everywhere/releases/download/v0.6.1/pkhex-cli-osx-x64.zip"
    sha256 "609053546f045191357305be3ca4d2e856df2d0b4058554a260e06ec65fa6f17"
  elsif OS.linux?
    url "https://github.com/arleypadua/PKHeX.Everywhere/releases/download/v0.6.1/pkhex-cli-linux-x64.zip"
    sha256 "75189c41cfc13eb09a2fe8e897cb4d6fe6599e7d78ca4a2fac6dc96e2a824cf7"
  end

  def install
    bin.install "pkhex-cli"
  end

  test do
    system "#{bin}/pkhex-cli --version"
  end
end
