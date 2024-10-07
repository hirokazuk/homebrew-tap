
# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
OWNER="stashapp"
REPO="stash"
VERSION="0.26.2"
class Stashapp < Formula
  desc "#{OWNER}/#{REPO} @1"
  homepage "https://github.com/#{OWNER}/#{REPO}"
  puts "HOMEBREW_STASHAPP_VERSION: #{ENV["HOMEBREW_STASHAPP_VERSION"]}"
  if ENV["HOMEBREW_STASHAPP_VERSION"]
    puts "Using version #{ENV["HOMEBREW_STASHAPP_VERSION"]}"
    version ENV["HOMEBREW_STASHAPP_VERSION"]
  else
    puts "Using version #{VERSION}"
    version VERSION
  end
  url "https://github.com/#{OWNER}/#{REPO}/releases/download/v#{version}/stash-macos"

  sha256 ""
  license "private"
  #head "https://github.com/#{OWNER}/#{REPO}.git", branch: "main"

  head do
    url "https://github.com/stashapp/stash/releases/download/latest_develop/stash-macos"
    version "latest_develop"
  end

  def install
    bin.install "stash-macos" => "stash"
  end

  test do
    system "stash" , "--version"
  end
end
