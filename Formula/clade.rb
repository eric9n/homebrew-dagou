class Clade < Formula
  desc "A tool for phylogenetic tree construction and pruning based on NCBI taxonomy data and GTDB (Genome Taxonomy Database) data."
  homepage "https://github.com/eric9n/clade"
  version "v0.1.1"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/eric9n/clade/releases/download/v0.1.1/clade-v0.1.1-x86_64-apple-darwin"
      sha256 "55b814dd419dfd43ec2de38d147d496b6204cead0c996be4ba50f196390b4c90"
    else
      url "https://github.com/eric9n/clade/releases/download/v0.1.1/clade-v0.1.1-aarch64-apple-darwin"
      sha256 "226542b318adf8664217576e43f713e1db68dd0c146b6aa2ec18304cf58783c2"
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
