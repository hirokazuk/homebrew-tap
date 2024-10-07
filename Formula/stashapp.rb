# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
OWNER="stashapp"
REPO="stash"
VERSION="0.26.2"

class Stashapp < Formula
  desc "#{OWNER}/#{REPO}"
  homepage "https://github.com/#{OWNER}/#{REPO}"
  url "https://github.com/#{OWNER}/#{REPO}/releases/download/v#{VERSION}/stash-macos"
  #sha256 ""
  license "private"

  option "with-target-version", "Specify version to install"

  head do
    url "https://github.com/stashapp/stash/releases/download/latest_develop/stash-macos"
  end

  def install
    if build.with? "target-version"
      version = ARGV.value("with-target-version")
      url = "https://github.com/#{OWNER}/#{REPO}/releases/download/v#{version}/stash-macos"
      curl_download url, to: "stash-macos"
    end
    
    bin.install "stash-macos" => "stash"
  end

  test do
    system "stash", "--version"
  end
end