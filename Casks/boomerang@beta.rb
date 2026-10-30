cask "boomerang@beta" do
  version "2.6.0-alpha.3"
  sha256 "5da996e1ce99ce784c2f3f94027aa8af1c7788d9f0956aa3ecfebdd73558835f"

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
