cask "midi-captain-max@beta" do
  version "1.15.0-beta.2"
  sha256 "e784867ee05164645835bbbc0af329c37792a179b134f1d50d86cfcbf9e9194d"

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
