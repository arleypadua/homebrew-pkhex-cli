class PkhexCli < Formula
  version "v1.2.0"
  desc "A CLI to manipulate pokemon game save files."
  homepage "https://github.com/arleypadua/PKHeX.Everywhere"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/arleypadua/PKHeX.Everywhere/releases/download/v1.2.0/pkhex-cli-osx-arm64.zip"
    sha256 "f468b14a5545f67313b0d11fe0083d97ad71e72de8af98d456f1b913df6a7f6b"
  elsif OS.mac?
    url "https://github.com/arleypadua/PKHeX.Everywhere/releases/download/v1.2.0/pkhex-cli-osx-x64.zip"
    sha256 "9f75eb313acf0a9a347822e309b01d30ae849e29ce077ab5bfda7e5b88d49468"
  elsif OS.linux?
    url "https://github.com/arleypadua/PKHeX.Everywhere/releases/download/v1.2.0/pkhex-cli-linux-x64.zip"
    sha256 "33d47973a9115a2f2382a0300e640902630a04ecd1b0aa0d3a2a851e2e64306f"
  end

  def install
    bin.install "pkhex-cli"
  end

  test do
    system "#{bin}/pkhex-cli --version"
  end
end
