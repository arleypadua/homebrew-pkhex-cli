class PkhexCli < Formula
  version "v0.5.0"
  desc "A CLI to manipulate pokemon game save files."
  homepage "https://github.com/arleypadua/PKHeX.Everywhere"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/arleypadua/PKHeX.Everywhere/releases/download/v0.5.0/pkhex-cli-osx-arm64.zip"
    sha256 "3121e18bee6f7416921da1aa608d3ba7badae9b926a1ab35588c33c6d89cf9da"
  elsif OS.mac?
    url "https://github.com/arleypadua/PKHeX.Everywhere/releases/download/v0.5.0/pkhex-cli-osx-x64.zip"
    sha256 "deca1f2db1a5cd72669f106e3a196e3dcb297b4f001c6ab4497af534c345956c"
  elsif OS.linux?
    url "https://github.com/arleypadua/PKHeX.Everywhere/releases/download/v0.5.0/pkhex-cli-linux-x64.zip"
    sha256 "ba435cdeca773614e5f6110926f30b036b195a2c9b8927e37d9ad2a9e7b2b145"
  end

  def install
    bin.install "pkhex-cli"
  end

  test do
    system "#{bin}/pkhex-cli --version"
  end
end
