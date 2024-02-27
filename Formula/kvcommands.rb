# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Kvcommands < Formula
  desc "hirokazuk/kv_commands"
  homepage "https://github.com/hirokazuk/kv_commands"
  url "https://github.com/hirokazuk/kv_commands/archive/refs/tags/v0.0.3.tar.gz"
  #sha256 "eace63da50fe1079ed9c7c830b2b03804431b9344acd7bf468f723994b7aecdc"
  license ""
  head "https://github.com/hirokazuk/kv_commands.git", branch: "main"

  depends_on "csvq"

  #skip_clean 'bin'

  def install
    # Remove unrecognized options if they cause configure to fail
    # https://rubydoc.brew.sh/Formula.html#std_configure_args-instance_method
    # system "./configure", "--disable-silent-rules", *std_configure_args
    # system "cmake", "-S", ".", "-B", "build", *std_cmake_args
    #bin.install "bin/testecho.sh" => "testecho"
    #prefix.install Dir['bin/*']
    prefix.install Dir['*']
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
