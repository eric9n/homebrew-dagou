class KunPeng < Formula
  desc "An ultra-fast, low-memory footprint and accurate taxonomy classifier for all"
  homepage "https://github.com/eric9n/Kun-peng"
  version "v0.7.3"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/eric9n/Kun-peng/releases/download/v0.7.3/kun_peng-v0.7.3-x86_64-apple-darwin"
      sha256 "19c05c2c327d1147d9430f8a96cc3bddb45ba8d6d63711a848105a4ed3ea1571"
    else
      url "https://github.com/eric9n/Kun-peng/releases/download/v0.7.3/kun_peng-v0.7.3-aarch64-apple-darwin"
      sha256 "f595fad1635b702d3c10467c9e61df79474f7cdca21e383eab517e8bb92a4e8d"
    end
  end

  def install
    if Hardware::CPU.intel?
      bin.install "kun_peng-#{version}-x86_64-apple-darwin" => "kun_peng"
    else
      bin.install "kun_peng-#{version}-aarch64-apple-darwin" => "kun_peng"
    end
  end

  test do
    system "#{bin}/kun_peng", "--version"
  end
end

