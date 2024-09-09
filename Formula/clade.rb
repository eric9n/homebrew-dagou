class Clade < Formula
  desc "A tool for phylogenetic tree construction and pruning based on NCBI taxonomy data and GTDB (Genome Taxonomy Database) data."
  homepage "https://github.com/eric9n/clade"
  version "v0.1.3"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/eric9n/clade/releases/download/v0.1.3/clade-v0.1.3-x86_64-apple-darwin"
      sha256 "b7309c33c40de11a7db4a1c639caee5da39c75c9dcea44fad7e153f728078ede"
    else
      url "https://github.com/eric9n/clade/releases/download/v0.1.3/clade-v0.1.3-aarch64-apple-darwin"
      sha256 "1127f6d6797e50501f6c64a8576ae06d48315d2bc01c04bf88cbc1cce56a1101"
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
