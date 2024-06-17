class PkhexCli < Formula
  version "v0.1.0"
  desc "A CLI to manipulate pokemon game save files."
  homepage "https://github.com/arleypadua/PKHeX.CLI"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/arleypadua/PKHeX.CLI/releases/download/v0.1.0/pkhex-cli-osx-arm64.zip"
    sha256 "e040672ea2eba5e8bd2072ea882e85f690d7271cfafd3049e59c234bad91d4f8"
  elsif OS.mac?
    url "https://github.com/arleypadua/PKHeX.CLI/releases/download/v0.1.0/pkhex-cli-osx-x64.zip"
    sha256 "79185dc9392b01c77e72116153b1bcb9a9109aefcdb1d6ee6c5d599a2c8f6cf9"
  elsif OS.linux?
    url "https://github.com/arleypadua/PKHeX.CLI/releases/download/v0.1.0/pkhex-cli-linux-x64.zip"
    sha256 "6227880b9838f7fa54c5c7589e9b263ec69f04dbf73b2c963e3d33691cd14275"
  end

  def install
    bin.install "pkhex-cli"
  end

  test do
    system "#{bin}/pkhex-cli --version"
  end
end
