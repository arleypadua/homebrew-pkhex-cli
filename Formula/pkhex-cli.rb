class PkhexCli < Formula
  version "v0.6.2"
  desc "A CLI to manipulate pokemon game save files."
  homepage "https://github.com/arleypadua/PKHeX.Everywhere"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/arleypadua/PKHeX.Everywhere/releases/download/v0.6.2/pkhex-cli-osx-arm64.zip"
    sha256 "9e06c0f26c491429765c05cf86f0407da10ab1f58d53a19bd8bc2ac56d698b0b"
  elsif OS.mac?
    url "https://github.com/arleypadua/PKHeX.Everywhere/releases/download/v0.6.2/pkhex-cli-osx-x64.zip"
    sha256 "b292fb18987247e046a828d487a502c12145cc7c13cb19154a508518083cdc53"
  elsif OS.linux?
    url "https://github.com/arleypadua/PKHeX.Everywhere/releases/download/v0.6.2/pkhex-cli-linux-x64.zip"
    sha256 "3102d225cf23ff034e1ab8ce9588e5c0ed294e251ffa4e9f765bd2e6311df221"
  end

  def install
    bin.install "pkhex-cli"
  end

  test do
    system "#{bin}/pkhex-cli --version"
  end
end
