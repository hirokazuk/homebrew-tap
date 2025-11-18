
# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
OWNER="stashapp"
REPO="stash"
VERSION=ENV["STASHAPP_DEVEL_VERSION"] || "0.29.3"
class Stashapp < Formula
  desc "#{OWNER}/#{REPO} @3"
  homepage "https://github.com/#{OWNER}/#{REPO}"
  # puts "HOMEBREW_STASHAPP_VERSION: #{ENV["HOMEBREW_STASHAPP_VERSION"]}"
  # if ENV["HOMEBREW_STASHAPP_VERSION"]
  #   puts "Using version #{ENV["HOMEBREW_STASHAPP_VERSION"]}"
  #   version ENV["HOMEBREW_STASHAPP_VERSION"]
  # else
  #   odie "HOMEBREW_STASHAPP_VERSION is not set. Please set it to the version you want to install."
  #   puts "Using version #{VERSION}"
  #   version VERSION
  # end
  url "https://github.com/#{OWNER}/#{REPO}/releases/download/v#{VERSION}/stash-macos"
  version VERSION
  
  sha256 ""
  license "private"
  #head "https://github.com/#{OWNER}/#{REPO}.git", branch: "main"

  head do
    url "https://github.com/stashapp/stash/releases/download/latest_develop/stash-macos"
    version "HEAD"
  end

  def install
    bin.install "stash-macos" => "stash"
  end

  test do
    system "stash" , "--version"
  end
end
