class KunPeng < Formula
  desc "An ultra-fast, low-memory footprint and accurate taxonomy classifier for all"
  homepage "https://github.com/eric9n/Kun-peng"
  version "v0.7.1"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/eric9n/Kun-peng/releases/download/v0.7.1/kun_peng-v0.7.1-x86_64-apple-darwin"
      sha256 "f8babbe180abca452072c30b99b21514ed9df8de73ed61d7182519e9fde82eda"
    else
      url "https://github.com/eric9n/Kun-peng/releases/download/v0.7.1/kun_peng-v0.7.1-aarch64-apple-darwin"
      sha256 "f6e97cda7ab530a647d8e008341755dde12158118c6a10cc8e0d9792645106da"
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

