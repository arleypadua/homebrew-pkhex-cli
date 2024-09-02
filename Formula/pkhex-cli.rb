class PkhexCli < Formula
  version "v1.0.1"
  desc "A CLI to manipulate pokemon game save files."
  homepage "https://github.com/arleypadua/PKHeX.Everywhere"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/arleypadua/PKHeX.Everywhere/releases/download/v1.0.1/pkhex-cli-osx-arm64.zip"
    sha256 "86067d17ef3716fad83655c116c106c056b3e1978f97530e44ce7997dce129a3"
  elsif OS.mac?
    url "https://github.com/arleypadua/PKHeX.Everywhere/releases/download/v1.0.1/pkhex-cli-osx-x64.zip"
    sha256 "e303b24e886ed57466f5ae0e7743cc9a52dc63f0598b07e581c49227708e7f17"
  elsif OS.linux?
    url "https://github.com/arleypadua/PKHeX.Everywhere/releases/download/v1.0.1/pkhex-cli-linux-x64.zip"
    sha256 "5ffe30ad5e4e3fd890837d6e85e1fe0451129992a23c22f0e90c7f2134c12511"
  end

  def install
    bin.install "pkhex-cli"
  end

  test do
    system "#{bin}/pkhex-cli --version"
  end
end
