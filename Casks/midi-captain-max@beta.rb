cask "midi-captain-max@beta" do
  version "1.15.0-alpha.4"
  sha256 "190b8b9df6abe6a68bc61c1826d50c68509630adf438321153a7fafd22f2ca5f"

  url "https://github.com/MC-Music-Workshop/midi-captain-max/releases/download/v#{version}/MIDI-Captain-MAX-Config-Editor-v#{version}.dmg"
  name "MIDI Captain MAX Config Editor Beta"
  desc "Pre-release config editor and firmware installer for MIDI Captain foot controllers"
  homepage "https://github.com/MC-Music-Workshop/midi-captain-max"

  livecheck do
    skip "Bumped automatically by the midi-captain-max release workflow"
  end

  conflicts_with cask: "midi-captain-max"

  app "MIDI Captain MAX Config Editor.app"

  zap trash: [
    "~/Library/Application Support/com.mcmusicworkshop.midicaptain.configeditor",
    "~/Library/Caches/com.mcmusicworkshop.midicaptain.configeditor",
    "~/Library/Preferences/com.mcmusicworkshop.midicaptain.configeditor.plist",
    "~/Library/WebKit/com.mcmusicworkshop.midicaptain.configeditor",
  ]
end
