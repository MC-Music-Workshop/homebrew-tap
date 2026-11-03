cask "boomerang@beta" do
  version "2.6.0-beta.2"
  sha256 "5fe3ebefb0d0076789839e8c39a9ff54f365bae23825a7df2d5f23c3edf5129b"

  url "https://github.com/MC-Music-Workshop/boomerang-plugin/releases/download/v#{version}/Boomerang-#{version}.pkg"
  name "Boomerang+ Beta"
  desc "Audio looper plugin (VST3, AU and standalone app)"
  homepage "https://github.com/MC-Music-Workshop/boomerang-plugin"

  livecheck do
    skip "Bumped automatically by the boomerang-plugin release workflow"
  end

  pkg "Boomerang-#{version}.pkg"

  uninstall pkgutil: [
    "com.MCMusicWorkshop.Boomerang.au",
    "com.MCMusicWorkshop.Boomerang.standalone",
    "com.MCMusicWorkshop.Boomerang.vst3",
  ]
end
