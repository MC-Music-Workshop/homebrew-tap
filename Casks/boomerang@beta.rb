cask "boomerang@beta" do
  version "2.6.0"
  sha256 "08d61437210f08f9543ea9370ce7be7e09d917d2e3e2ea9fc174c7e119109e63"

  url "https://github.com/MC-Music-Workshop/boomerang-plugin/releases/download/v#{version}/Boomerang-#{version}.pkg"
  name "Boomerang+ Beta"
  desc "Audio looper plugin (VST3, AU and standalone app)"
  homepage "https://github.com/MC-Music-Workshop/boomerang-plugin"

  livecheck do
    skip "Bumped automatically by the boomerang-plugin release workflow"
  end

  conflicts_with cask: "boomerang"

  pkg "Boomerang-#{version}.pkg"

  uninstall pkgutil: [
    "com.MCMusicWorkshop.Boomerang.au",
    "com.MCMusicWorkshop.Boomerang.standalone",
    "com.MCMusicWorkshop.Boomerang.vst3",
  ]
end
