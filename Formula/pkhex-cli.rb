class PkhexCli < Formula
  version "v1.3.1"
  desc "A CLI to manipulate pokemon game save files."
  homepage "https://github.com/arleypadua/PKHeX.Everywhere"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/arleypadua/PKHeX.Everywhere/releases/download/v1.3.1/pkhex-cli-osx-arm64.zip"
    sha256 "b8169fbd3b06772359c88265bb7d28159a25b278e35667cfd7e35d6432d64ea9"
  elsif OS.mac?
    url "https://github.com/arleypadua/PKHeX.Everywhere/releases/download/v1.3.1/pkhex-cli-osx-x64.zip"
    sha256 "01c638003f97faf81991d2043c328287514f71a22bedf5503bfcbb2a0412c032"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/arleypadua/PKHeX.Everywhere/releases/download/v1.3.1/pkhex-cli-linux-arm64.zip"
    sha256 "3c5b0de6b2df202ef9cae25e9b2a439f08c4c67ab57f0b48a41e8ad2bd668299"
  elsif OS.linux?
    url "https://github.com/arleypadua/PKHeX.Everywhere/releases/download/v1.3.1/pkhex-cli-linux-x64.zip"
    sha256 "dac37de1652366f6d91ededecb3891ca84c2580ab7304816d48e0b5d74cf0ae6"
  end

  def install
    bin.install "pkhex-cli"
  end

  test do
    system "#{bin}/pkhex-cli --version"
  end
end
