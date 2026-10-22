# MC Music Workshop Homebrew Tap

Homebrew casks for [MIDI Captain MAX](https://github.com/MC-Music-Workshop/midi-captain-max).

## Install

```bash
brew install --cask mc-music-workshop/tap/midi-captain-max
```

To try betas and release candidates, use the beta cask instead. It follows the newest release of any kind, so it also picks up the stable release once that ships:

```bash
brew install --cask mc-music-workshop/tap/midi-captain-max@beta
```

The two casks can't be installed together. To switch, `brew uninstall --cask` one, then install the other.

## Upgrade

```bash
brew upgrade --cask midi-captain-max
```

## Updates

Both casks are bumped automatically when a release is published in `midi-captain-max` (`.github/workflows/homebrew.yml` there). `midi-captain-max@beta` follows every release; `midi-captain-max` follows stable releases only.
