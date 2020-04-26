class Ttab < Formula
  desc "CLI for programmatically opening tabs/windows in Terminal or iTerm"
  homepage "https://github.com/ksvirsky/xtab"
  url "https://github.com/ksvirsky/xtab/archive/v0.7.1.tar.gz"
  sha256 "5ccfb01c8798bcc78de09ffaeb586eddd5b93166ddf6101167ac9b3202c6e5e1"

  def install
    bin.install "bin/xtab"
    man1.install "man/xtab.1"
  end

  test do
    stdout = shell_output "#{bin}/xtab --version"
    assert_match /xtab v#{version}/, stdout
  end
end