class Ttab < Formula
  desc "CLI for programmatically opening tabs/windows in Terminal or iTerm"
  homepage "https://github.com/ksvirsky/xtab"
  url "https://github.com/ksvirsky/xtab/archive/v0.7.1.tar.gz"
  sha256 "663f7028c2a6f280add92777338bf763fcdc48de"

  def install
    bin.install "bin/xtab"
    man1.install "man/xtab.1"
  end

  test do
    stdout = shell_output "#{bin}/xtab --version"
    assert_match /xtab v#{version}/, stdout
  end
end