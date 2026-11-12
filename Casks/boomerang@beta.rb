cask "boomerang@beta" do
  version "2.6.1-beta.1"
  sha256 "10d3d6070898399563195e0b589ff558b5d9eef7f1d6197c9d6a3fc0a1e1a254"

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
