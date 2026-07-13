# homebrew-macndcheese

Homebrew tap for [MacNdCheese](https://github.com/mont127/MacNdCheese), a launcher for
running Windows games on macOS via Wine (DXVK, MoltenVK, DXMT, D3DMetal).

## Install

```
brew tap realmaitreal/macndcheese
brew install --cask macndcheese
```

## Update

```
brew update
brew upgrade --cask macndcheese
```

The cask here is bumped automatically on every stable MacNdCheese release by a
GitHub Actions workflow in the main repo. See `packaging/homebrew-tap/` there
for the source template.
