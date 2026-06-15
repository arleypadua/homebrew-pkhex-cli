class PkhexCli < Formula
  version "v1.4.0"
  desc "A CLI to manipulate pokemon game save files."
  homepage "https://github.com/arleypadua/PKHeX.Everywhere"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/arleypadua/PKHeX.Everywhere/releases/download/v1.4.0/pkhex-cli-osx-arm64.zip"
    sha256 "34a83eb043d366c48f548bd66ee17dc00c7d28fb339c0d5fe3e2ebc736d17880"
  elsif OS.mac?
    url "https://github.com/arleypadua/PKHeX.Everywhere/releases/download/v1.4.0/pkhex-cli-osx-x64.zip"
    sha256 "2b43d61578323d9799b195c36bcb68ddda112ddaf5a3fe689bc0dd9ac8486d34"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/arleypadua/PKHeX.Everywhere/releases/download/v1.4.0/pkhex-cli-linux-arm64.zip"
    sha256 "8662997df8d48b10462b3e6b0023c73f6e44517d3e262e2c9b83acdc2467d19a"
  elsif OS.linux?
    url "https://github.com/arleypadua/PKHeX.Everywhere/releases/download/v1.4.0/pkhex-cli-linux-x64.zip"
    sha256 "9007528ba7972ccf50940f6502b66a91c6c5d3cc45c8c9c7e91d6497763c943b"
  end

  def install
    bin.install "pkhex-cli"
  end

  test do
    system "#{bin}/pkhex-cli --version"
  end
end
