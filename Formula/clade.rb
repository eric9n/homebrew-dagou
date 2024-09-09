class Clade < Formula
  desc "Description of your project"
  homepage "https://github.com/eric9n/clade"
  url "https://github.com/eric9n/clade/releases/download/#{ENV['TAG_NAME']}/#{ENV['PROJECT_NAME']}-#{ENV['TAG_NAME']}-x86_64-apple-darwin" # Use both TAG_NAME and PROJECT_NAME
  sha256 "your_sha256_checksum_here" # Replace with the actual SHA256 checksum
  license "MIT"

  def install
    bin.install "clade" # Assuming the binary is named 'clade'
  end

  test do
    system "#{bin}/clade", "--version" # Adjust the command for testing
  end
end
