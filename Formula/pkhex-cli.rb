class PkhexCli < Formula
  version "v0.2.0"
  desc "A CLI to manipulate pokemon game save files."
  homepage "https://github.com/arleypadua/PKHeX.CLI"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/arleypadua/PKHeX.CLI/releases/download/v0.2.0/pkhex-cli-osx-arm64.zip"
    sha256 "9cfd920f2539766f14e51c21a12de43048da85e0489d64c837cbb91c952ab9f6"
  elsif OS.mac?
    url "https://github.com/arleypadua/PKHeX.CLI/releases/download/v0.2.0/pkhex-cli-osx-x64.zip"
    sha256 "8b24a5d0c622cf9b97bf438236a797a97966ac1a90a8d4b374391050b783cad6"
  elsif OS.linux?
    url "https://github.com/arleypadua/PKHeX.CLI/releases/download/v0.2.0/pkhex-cli-linux-x64.zip"
    sha256 "e37cc6fa3996a691e2e49561d552f8caf95f4ffa68f564c18dc27fbdf21d9fed"
  end

  def install
    bin.install "pkhex-cli"
  end

  test do
    system "#{bin}/pkhex-cli --version"
  end
end
