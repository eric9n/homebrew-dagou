class KunPeng < Formula
  desc "An ultra-fast, low-memory footprint and accurate taxonomy classifier for all"
  homepage "https://github.com/eric9n/Kun-peng"
  version "v0.7.2"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/eric9n/Kun-peng/releases/download/v0.7.2/kun_peng-v0.7.2-x86_64-apple-darwin"
      sha256 "31742364fdc26db1c29579c19378ff51b9635dd6a947772f8c0dabe97791d3ba"
    else
      url "https://github.com/eric9n/Kun-peng/releases/download/v0.7.2/kun_peng-v0.7.2-aarch64-apple-darwin"
      sha256 "3557f24fc12c12f97c2ab6adfed7068553e0ba162a149d03c49727936af74fcf"
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

