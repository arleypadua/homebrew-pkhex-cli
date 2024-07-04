class PkhexCli < Formula
  version "v0.3.1"
  desc "A CLI to manipulate pokemon game save files."
  homepage "https://github.com/arleypadua/PKHeX.CLI"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/arleypadua/PKHeX.CLI/releases/download/v0.3.1/pkhex-cli-osx-arm64.zip"
    sha256 "16d2d1fa5c0e0948794c671f65ad8fd0f42ed6f36731bc21c2800e7e528e28e7"
  elsif OS.mac?
    url "https://github.com/arleypadua/PKHeX.CLI/releases/download/v0.3.1/pkhex-cli-osx-x64.zip"
    sha256 "3305873a7d1545238e1c5b9102972c953dbe9eac3dba6edd3e2af338edc6fc41"
  elsif OS.linux?
    url "https://github.com/arleypadua/PKHeX.CLI/releases/download/v0.3.1/pkhex-cli-linux-x64.zip"
    sha256 "f48694cd5b84de8f81cc5efd013e165c4cce77fb3a56e41dd17e3a2279a69ff1"
  end

  def install
    bin.install "pkhex-cli"
  end

  test do
    system "#{bin}/pkhex-cli --version"
  end
end
