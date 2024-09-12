class KunPeng < Formula
  desc "An ultra-fast, low-memory footprint and accurate taxonomy classifier for all"
  homepage "https://github.com/eric9n/Kun-peng"
  version "v0.7.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/eric9n/Kun-peng/releases/download/v0.7.0/kun_peng-v0.7.0-x86_64-apple-darwin"
      sha256 "00fab0e90361ab1c57ec6ba70b1f78f49b8e609cbf5655ca9ccea2d7b2aa78ae"
    else
      url "https://github.com/eric9n/Kun-peng/releases/download/v0.7.0/kun_peng-v0.7.0-aarch64-apple-darwin"
      sha256 "fdf2ad97aa18a5d3e2a6cd85970c2223ab220246645e935b6608df743760680c"
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

