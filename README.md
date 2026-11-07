# MC Music Workshop Homebrew Tap

Homebrew casks for [MIDI Captain MAX](https://github.com/MC-Music-Workshop/midi-captain-max).

## Install

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

[Boomerang+](https://github.com/MC-Music-Workshop/boomerang-plugin) (VST3, AU and standalone app):

```bash
brew install --cask mc-music-workshop/tap/boomerang
```

For alphas and betas too, use `boomerang@beta` instead. Like the MIDI Captain MAX casks, the two can't be installed together.

## Upgrade

```bash
brew upgrade --cask midi-captain-max
brew upgrade --cask boomerang
```

## Updates

The casks are bumped automatically when a release is published in their project repo (`.github/workflows/homebrew.yml` there). The `@beta` casks follow every release; `midi-captain-max` follows stable releases only.
