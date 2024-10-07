
# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
OWNER="stashapp"
REPO="stash"
VERSION="0.26.2"
class Stashapp < Formula
  desc "#{OWNER}/#{REPO}"
  homepage "https://github.com/#{OWNER}/#{REPO}"
  url "https://github.com/#{OWNER}/#{REPO}/releases/download/v#{VERSION}/stash-macos"
  version VERSION
  #sha256 ""
  license "private"
  #head "https://github.com/#{OWNER}/#{REPO}.git", branch: "main"

  head do
    url "https://github.com/stashapp/stash/releases/download/latest_develop/stash-macos"
  end

  def install
    bin.install "stash-macos" => "stash"
  end

  test do
    system "stash" , "--version"
  end
end
