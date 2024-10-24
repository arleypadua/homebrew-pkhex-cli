class PkhexCli < Formula
  version "v1.1.0"
  desc "A CLI to manipulate pokemon game save files."
  homepage "https://github.com/arleypadua/PKHeX.Everywhere"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/arleypadua/PKHeX.Everywhere/releases/download/v1.1.0/pkhex-cli-osx-arm64.zip"
    sha256 "e1a37281d5c784bf911a69a42e49f150ccb68e826840f11dc025161f7b104cfe"
  elsif OS.mac?
    url "https://github.com/arleypadua/PKHeX.Everywhere/releases/download/v1.1.0/pkhex-cli-osx-x64.zip"
    sha256 "c36e04c5c3c1a621334f94069368692a955616f7a293cc9bcdf061eee5adb469"
  elsif OS.linux?
    url "https://github.com/arleypadua/PKHeX.Everywhere/releases/download/v1.1.0/pkhex-cli-linux-x64.zip"
    sha256 "cbe5ae2440f4288a934b5e193d6d71b94a1ce1aa0e0766626ac62662a2a49b3a"
  end

  def install
    bin.install "pkhex-cli"
  end

  test do
    system "#{bin}/pkhex-cli --version"
  end
end
