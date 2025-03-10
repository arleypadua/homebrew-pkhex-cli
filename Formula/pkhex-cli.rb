class PkhexCli < Formula
  version "v1.2.2"
  desc "A CLI to manipulate pokemon game save files."
  homepage "https://github.com/arleypadua/PKHeX.Everywhere"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/arleypadua/PKHeX.Everywhere/releases/download/v1.2.2/pkhex-cli-osx-arm64.zip"
    sha256 "4152302f60263b427d5d2df86687d3116b6f81d5541836c59a3715038157f3b2"
  elsif OS.mac?
    url "https://github.com/arleypadua/PKHeX.Everywhere/releases/download/v1.2.2/pkhex-cli-osx-x64.zip"
    sha256 "6cc444c486fad1a08ab12c6282b15fadbf8e4bed9aa9d049f4c5da6e0fb61ece"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/arleypadua/PKHeX.Everywhere/releases/download/v1.2.2/pkhex-cli-linux-arm64.zip"
    sha256 "5a85363768963829a5c69c13fd3ba7738c8a27df44d96863432fae09ebd1f54d"
  elsif OS.linux?
    url "https://github.com/arleypadua/PKHeX.Everywhere/releases/download/v1.2.2/pkhex-cli-linux-x64.zip"
    sha256 "2c983538acf03e30244e58a3f336d16548b1a3d4867945ff2f9327e7420048db"
  end

  def install
    bin.install "pkhex-cli"
  end

  test do
    system "#{bin}/pkhex-cli --version"
  end
end
