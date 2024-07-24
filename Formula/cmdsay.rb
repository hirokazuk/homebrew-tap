# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Cmdsay < Formula
  desc "random show cmd description"
  homepage ""
  url "https://github.com/Kyou13/cmdsay/archive/v0.0.1.tar.gz"
  sha256 "8bae1d9307c65990da1493e5a3db31dad55aa67166f4219187ff9fc8ca39f6df"

  depends_on "cowsay"
  depends_on "shc"

  def install
    system "shc", "-f", "cmdsay.sh", "-o", "cmdsay"
    bin.install "cmdsay"
  end
end
