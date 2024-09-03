class PkhexCli < Formula
  version "v1.0.2"
  desc "A CLI to manipulate pokemon game save files."
  homepage "https://github.com/arleypadua/PKHeX.Everywhere"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/arleypadua/PKHeX.Everywhere/releases/download/v1.0.2/pkhex-cli-osx-arm64.zip"
    sha256 "d70e2fec1ee3c7b700a4ec165c8577521918a797cb5882b51cd03b58bf047317"
  elsif OS.mac?
    url "https://github.com/arleypadua/PKHeX.Everywhere/releases/download/v1.0.2/pkhex-cli-osx-x64.zip"
    sha256 "ed401eec113f2905a520a1aba9f3b1acf1a58fb672570b033295be5f2794519b"
  elsif OS.linux?
    url "https://github.com/arleypadua/PKHeX.Everywhere/releases/download/v1.0.2/pkhex-cli-linux-x64.zip"
    sha256 "d5b75d0a0b57df7a1ebcf554e3234337a45cb01e46403a320e1a93ade0c6b65c"
  end

  def install
    bin.install "pkhex-cli"
  end

  test do
    system "#{bin}/pkhex-cli --version"
  end
end
