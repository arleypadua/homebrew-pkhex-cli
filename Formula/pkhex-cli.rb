class PkhexCli < Formula
  version "v1.0.3"
  desc "A CLI to manipulate pokemon game save files."
  homepage "https://github.com/arleypadua/PKHeX.Everywhere"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/arleypadua/PKHeX.Everywhere/releases/download/v1.0.3/pkhex-cli-osx-arm64.zip"
    sha256 "a666373331b98e32b3d68e00b243c9e6933679f7b15d6cc07cfc82bfec1e306e"
  elsif OS.mac?
    url "https://github.com/arleypadua/PKHeX.Everywhere/releases/download/v1.0.3/pkhex-cli-osx-x64.zip"
    sha256 "d2b6b2d98e4de90ab7238d8f9a71b0cf6e5cd5b7990676241c0be0577745a490"
  elsif OS.linux?
    url "https://github.com/arleypadua/PKHeX.Everywhere/releases/download/v1.0.3/pkhex-cli-linux-x64.zip"
    sha256 "f9961db90a843645fe93001175c852756821219017066e4a3e5f20479564855e"
  end

  def install
    bin.install "pkhex-cli"
  end

  test do
    system "#{bin}/pkhex-cli --version"
  end
end
