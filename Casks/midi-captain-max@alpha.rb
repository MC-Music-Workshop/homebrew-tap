cask "midi-captain-max@alpha" do
  version "1.16.0-alpha.3"
  sha256 "975b37e7a0375385cd0913fbf7fd59b4bbfc1e5226962c6745b8869ddca4ff05"

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
