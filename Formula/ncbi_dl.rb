class NcbiDl < Formula
  desc "A command-line tool for downloading and managing NCBI data."
  homepage "https://github.com/eric9n/ncbi_dl"
  version "v0.1.10"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/eric9n/ncbi_dl/releases/download/v0.1.10/ncbi_dl-v0.1.10-x86_64-apple-darwin"
      sha256 "bc4ee5ee49644ba4797b0dd809d2164797a398f6128b1ac0fd77314c6522ca53"
    else
      url "https://github.com/eric9n/ncbi_dl/releases/download/v0.1.10/ncbi_dl-v0.1.10-aarch64-apple-darwin"
      sha256 "7a3772f5b96f51dcd049158fc7cf25d1d1c3efc35d44929489067c6da8f1f303"
    end
  end

  def install
    if Hardware::CPU.intel?
      bin.install "ncbi_dl-#{version}-x86_64-apple-darwin" => "ncbi_dl"
    else
      bin.install "ncbi_dl-#{version}-aarch64-apple-darwin" => "ncbi_dl"
    end
  end

  test do
    system "#{bin}/ncbi_dl", "--version"
  end
end

