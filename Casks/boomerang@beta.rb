cask "boomerang@beta" do
  version "2.6.1-beta.2"
  sha256 "ee798f776311af98be0fe9610e174d72ddb1388fe24153196b0e3fa94b1636b7"

  url "https://github.com/MC-Music-Workshop/boomerang-plugin/releases/download/v#{version}/Boomerang-#{version}.pkg"
  name "Boomerang+ Beta"
  desc "Audio looper plugin (VST3, AU and standalone app)"
  homepage "https://github.com/MC-Music-Workshop/boomerang-plugin"

  livecheck do
    skip "Bumped automatically by the boomerang-plugin release workflow"
  end

  conflicts_with cask: ["boomerang", "boomerang@alpha"]

  pkg "Boomerang-#{version}.pkg"

  uninstall pkgutil: [
    "com.MCMusicWorkshop.Boomerang.au",
    "com.MCMusicWorkshop.Boomerang.standalone",
    "com.MCMusicWorkshop.Boomerang.vst3",
  ]
end
