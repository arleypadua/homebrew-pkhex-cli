class PkhexCli < Formula
  version "v1.0.0"
  desc "A CLI to manipulate pokemon game save files."
  homepage "https://github.com/arleypadua/PKHeX.Everywhere"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/arleypadua/PKHeX.Everywhere/releases/download/v1.0.0/pkhex-cli-osx-arm64.zip"
    sha256 "73aac635c1be5c9e1fcfe23ca099e26b62c2ed66707c4e9a3b6ff169eca5df61"
  elsif OS.mac?
    url "https://github.com/arleypadua/PKHeX.Everywhere/releases/download/v1.0.0/pkhex-cli-osx-x64.zip"
    sha256 "56bc9167e9aa597dffa4eba87d8a494f95a922a08a3bba1b9a770da1c9f5ab00"
  elsif OS.linux?
    url "https://github.com/arleypadua/PKHeX.Everywhere/releases/download/v1.0.0/pkhex-cli-linux-x64.zip"
    sha256 "84c32081a32f227010ab7d413f91c52315b9f6280e70c08363ec128ee06cff90"
  end

  def install
    bin.install "pkhex-cli"
  end

  test do
    system "#{bin}/pkhex-cli --version"
  end
end
