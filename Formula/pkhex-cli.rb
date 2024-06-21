class PkhexCli < Formula
  version "v0.3.0"
  desc "A CLI to manipulate pokemon game save files."
  homepage "https://github.com/arleypadua/PKHeX.CLI"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/arleypadua/PKHeX.CLI/releases/download/v0.3.0/pkhex-cli-osx-arm64.zip"
    sha256 "663954ea8a9f040ffb7cd7c0af94960cb4f467291df9e07942a30ce4351d4a8f"
  elsif OS.mac?
    url "https://github.com/arleypadua/PKHeX.CLI/releases/download/v0.3.0/pkhex-cli-osx-x64.zip"
    sha256 "47f4c486a1bf9bfb20b7a99eed0b22659380f211d7f61c556be8f00cd37f144b"
  elsif OS.linux?
    url "https://github.com/arleypadua/PKHeX.CLI/releases/download/v0.3.0/pkhex-cli-linux-x64.zip"
    sha256 "4a442ab336282e23d35f8ed1cc85d15fe15a7404bc8c827d68ac7d78b3c0e620"
  end

  def install
    bin.install "pkhex-cli"
  end

  test do
    system "#{bin}/pkhex-cli --version"
  end
end
