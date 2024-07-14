class PkhexCli < Formula
  version "v0.4.0"
  desc "A CLI to manipulate pokemon game save files."
  homepage "https://github.com/arleypadua/PKHeX.CLI"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/arleypadua/PKHeX.Everywhere/releases/download/v0.4.0/pkhex-cli-osx-arm64.zip"
    sha256 "692f69ab6eb66b7a1ff169b07a55d44e52807b1052d85108b693b86f4aca71f8"
  elsif OS.mac?
    url "https://github.com/arleypadua/PKHeX.Everywhere/releases/download/v0.4.0/pkhex-cli-osx-x64.zip"
    sha256 "005db17254541509b78f63725818f0fbf929266ebdae567a885cc771fdfcd45a"
  elsif OS.linux?
    url "https://github.com/arleypadua/PKHeX.Everywhere/releases/download/v0.4.0/pkhex-cli-linux-x64.zip"
    sha256 "09ab7e70e8d8d33b40f01da6dac37c7e2ec52e0a724259ec491a1437e6a3bcfa"
  end

  def install
    bin.install "pkhex-cli"
  end

  test do
    system "#{bin}/pkhex-cli --version"
  end
end
