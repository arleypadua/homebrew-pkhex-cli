class PkhexCli < Formula
  version "v0.1.1"
  desc "A CLI to manipulate pokemon game save files."
  homepage "https://github.com/arleypadua/PKHeX.CLI"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/arleypadua/PKHeX.CLI/releases/download/v0.1.1/pkhex-cli-osx-arm64.zip"
    sha256 "ef783200e542f51732e877517b963d4c2d1749bddf6b534d8834e77650008116"
  elsif OS.mac?
    url "https://github.com/arleypadua/PKHeX.CLI/releases/download/v0.1.1/pkhex-cli-osx-x64.zip"
    sha256 "8e7204a8b23d980bb1f3bdab7ac0f16028ff654d31f7dc799b5a2a0825882cfa"
  elsif OS.linux?
    url "https://github.com/arleypadua/PKHeX.CLI/releases/download/v0.1.1/pkhex-cli-linux-x64.zip"
    sha256 "d951d9dd072a73e43e8761633705f7a5a88d99475694313a3034f0e3c12fe196"
  end

  def install
    bin.install "pkhex-cli"
  end

  test do
    system "#{bin}/pkhex-cli --version"
  end
end
