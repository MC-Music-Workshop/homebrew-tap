cask "boomerang" do
  version "2.6.0"
  sha256 "08d61437210f08f9543ea9370ce7be7e09d917d2e3e2ea9fc174c7e119109e63"

  url "https://github.com/MC-Music-Workshop/boomerang-plugin/releases/download/v#{version}/Boomerang-#{version}.pkg"
  name "Boomerang+"
  desc "Audio looper plugin (VST3, AU and standalone app)"
  homepage "https://github.com/MC-Music-Workshop/boomerang-plugin"

  livecheck do
    url :url
    strategy :github_latest
  end

  pkg "Boomerang-#{version}.pkg"

  uninstall pkgutil: [
    "com.MCMusicWorkshop.Boomerang.au",
    "com.MCMusicWorkshop.Boomerang.standalone",
    "com.MCMusicWorkshop.Boomerang.vst3",
  ]
end
