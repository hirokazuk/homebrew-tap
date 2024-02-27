
# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Convertcomic < Formula
  desc "hirokazuk/convertComic"
  homepage "https://github.com/hirokazuk/convertComic"
  url "https://github.com/hirokazuk/convertComic/archive/refs/tags/v0.0.3.tar.gz"
  #sha256 ""
  license ""
  head "https://github.com/hirokazuk/convertComic.git", branch: "main"

  depends_on "moreutils" #use ts
  depends_on "pueue"
  
  depends_on "terminal-notifier"
  depends_on "unar"
  depends_on "findutils"
  depends_on "imagemagick"
  depends_on "rename"
  depends_on "tag"
  
  depends_on "hirokazuk/homebrew-tap/tsmanager"

  #skip_clean 'bin'

  def install
    # Remove unrecognized options if they cause configure to fail
    # https://rubydoc.brew.sh/Formula.html#std_configure_args-instance_method
    # system "./configure", "--disable-silent-rules", *std_configure_args
    # system "cmake", "-S", ".", "-B", "build", *std_cmake_args
    #bin.install "bin/testecho.sh" => "testecho"
    #prefix.install Dir['bin/*']
    #prefix.install Dir['*']
    prefix.install 'bin'
    prefix.install 'ConvertComic.workflow'
    system "open", "#{prefix}/ConvertComic.workflow"
    # bin.install Dir['bin/*.sh']
    #bin.install 'bin/testecho.sh'
    #prefix.install 'bin'
    #(bin+'testecho.sh').chmod 0755
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
