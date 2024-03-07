
# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
OWNER="stashapp"
REPO="stash"
VERSION="0.0.1"
class Stashapp < Formula
  desc "#{OWNER}/#{REPO}"
  homepage "https://github.com/#{OWNER}/#{REPO}"
  #url "https://github.com/#{OWNER}/#{REPO}/archive/refs/tags/v#{VERSION}.tar.gz"
  url "https://github.com/stashapp/stash/releases/download/v0.25.0/stash-macos"
  #sha256 ""
  license "private"
  head "https://github.com/#{OWNER}/#{REPO}.git", branch: "main"


  def install
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test myshellutils`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
  end
end
