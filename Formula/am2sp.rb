class Am2sp < Formula
  desc "Turn an Apple Music link or Music's current track into a Spotify link"
  homepage "https://github.com/MC-Music-Workshop/am2s"
  url "https://github.com/MC-Music-Workshop/am2s/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "667a9b81b995b41c98ecc51bea6daf623abeb0bd2c9b93ea7f93a6c872eda5d4"
  license "MIT"

  livecheck do
    url :stable
    strategy :github_latest
  end

  depends_on :macos

  def install
    bin.install "am2sp"
    pkgshare.install "Copy Spotify Link.shortcut"
  end

  def caveats
    <<~EOS
      To add "Copy Spotify Link" to the Services menu and menu bar:
        open "#{opt_pkgshare}/Copy Spotify Link.shortcut"
      Then turn on Shortcuts > Settings > Advanced > Allow Running Scripts.
    EOS
  end

  test do
    assert_match "Not an Apple Music link", shell_output("#{bin}/am2sp nope 2>&1", 1)
  end
end
