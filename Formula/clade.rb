class Clade < Formula
  desc "A tool for phylogenetic tree construction and pruning based on NCBI taxonomy data and GTDB (Genome Taxonomy Database) data."
  homepage "https://github.com/eric9n/clade"
  version "v0.1.2"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/eric9n/clade/releases/download/v0.1.2/clade-v0.1.2-x86_64-apple-darwin"
      sha256 "ce5c69f15d1880d217eba7d79950dd73d6ba71777ee7153adda1f20547a17678"
    else
      url "https://github.com/eric9n/clade/releases/download/v0.1.2/clade-v0.1.2-aarch64-apple-darwin"
      sha256 "a90e80faa1ce94a6a01c85cdee4277b043b1e61b5be5ebaa62339f64864e24f7"
    end
  end

  def install
    if Hardware::CPU.intel?
      bin.install "clade-#{version}-x86_64-apple-darwin" => "clade"
    else
      bin.install "clade-#{version}-aarch64-apple-darwin" => "clade"
    end
  end
  test do
    system "#{bin}/clade", "--version"
  end
end
