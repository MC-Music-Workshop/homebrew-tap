cask "midi-captain-max@alpha" do
  version "1.16.0-beta.1"
  sha256 "f5a53de0b176a383c285d1feffdced0460f60d720e33621d267820d147dea56b"

  url "https://github.com/MC-Music-Workshop/midi-captain-max/releases/download/v#{version}/MIDI-Captain-MAX-Config-Editor-v#{version}.app.tar.gz"
  name "MIDI Captain MAX Config Editor Alpha"
  desc "Pre-release config editor and firmware installer for MIDI Captain foot controllers"
  homepage "https://github.com/MC-Music-Workshop/midi-captain-max"

  livecheck do
    skip "Bumped automatically by the midi-captain-max release workflow"
  end

  auto_updates true
  conflicts_with cask: ["midi-captain-max", "midi-captain-max@beta"]

  app "MIDI Captain MAX Config Editor.app"

  zap trash: [
    "~/Library/Application Support/com.mcmusicworkshop.midicaptain.configeditor",
    "~/Library/Caches/com.mcmusicworkshop.midicaptain.configeditor",
    "~/Library/Preferences/com.mcmusicworkshop.midicaptain.configeditor.plist",
    "~/Library/WebKit/com.mcmusicworkshop.midicaptain.configeditor",
  ]
end
