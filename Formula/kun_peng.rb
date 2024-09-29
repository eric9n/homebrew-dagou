class KunPeng < Formula
  desc "An ultra-fast, low-memory footprint and accurate taxonomy classifier for all"
  homepage "https://github.com/eric9n/Kun-peng"
  version "v0.7.4"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/eric9n/Kun-peng/releases/download/v0.7.4/kun_peng-v0.7.4-x86_64-apple-darwin"
      sha256 "6a667939df06a47d65324564cd74f7ccfea3dfabc66dace109ef3ea8e8f0dbf5"
    else
      url "https://github.com/eric9n/Kun-peng/releases/download/v0.7.4/kun_peng-v0.7.4-aarch64-apple-darwin"
      sha256 "1e6a7adf2c9e886267280cc1d1f5fb6057f5581a7731e48339083588a479e6bf"
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

