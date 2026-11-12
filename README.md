# MC Music Workshop Homebrew Tap

Homebrew casks and formulae from MC Music Workshop.

## MIDI Captain MAX

```bash
brew install --cask mc-music-workshop/tap/midi-captain-max
```

If MIDI Captain MAX is already installed outside Homebrew, you can ask Homebrew to adopt the existing app:

```bash
brew install --cask --adopt mc-music-workshop/tap/midi-captain-max
```

Adoption works only when the existing app matches the cask artifact. Otherwise, move or uninstall the existing app before installing with Homebrew.

To try betas and release candidates, use the beta cask instead. It follows the newest release of any kind, so it also picks up the stable release once that ships:

```bash
brew install --cask mc-music-workshop/tap/midi-captain-max@beta
```

The two casks can't be installed together. To switch, `brew uninstall --cask` one, then install the other.

## Boomerang+

[Boomerang+](https://github.com/MC-Music-Workshop/boomerang-plugin) (VST3, AU and standalone app) has a beta cask only, until it has a stable release:

```bash
brew install --cask mc-music-workshop/tap/boomerang@beta
```

## am2sp

[am2sp](https://github.com/MC-Music-Workshop/am2s) turns an Apple Music link, or the song playing in Music, into a Spotify link for the same song or album:

```bash
brew install mc-music-workshop/tap/am2sp
```

Follow the post-install note to add the **Copy Spotify Link** Shortcut to the Services menu.

## Upgrade

```bash
brew upgrade --cask midi-captain-max
brew upgrade --cask boomerang@beta
brew upgrade am2sp
```

## Updates

The `am2sp` formula is bumped by hand for now. The casks are bumped automatically when a release is published in their project repo (`.github/workflows/homebrew.yml` there). The `@beta` casks follow every release; `midi-captain-max` follows stable releases only.
