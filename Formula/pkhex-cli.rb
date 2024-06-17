class PkhexCli < Formula
  version ""
  desc "A CLI to manipulate pokemon game save files."
  homepage "https://github.com/arleypadua/PKHeX.CLI"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/arleypadua/PKHeX.CLI/releases/download/#{version}/pkhex-cli-osx-arm64.zip"
    sha256 ""
  elsif OS.mac?
    url "https://github.com/arleypadua/PKHeX.CLI/releases/download/#{version}/pkhex-cli-osx-x64.zip"
    sha256 ""
  elsif OS.linux?
    url "https://github.com/arleypadua/PKHeX.CLI/releases/download/#{version}/pkhex-cli-linux-x64.zip"
    sha256 ""
  end

  def install
    bin.install "pkhex-cli"
  end

  test do
    system "#{bin}/pkhex-cli --version"
  end
end
