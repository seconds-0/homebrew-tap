# Updating the gh-switcher Formula

## When releasing a new version:

### 1. Get the new SHA256
```bash
curl -sL https://github.com/seconds-0/gh-switcher/archive/refs/tags/vX.Y.Z.tar.gz | shasum -a 256
```

### 2. Update the formula
Edit `Formula/gh-switcher.rb`:
- Change the `url` to point to new version tag
- Update the `sha256` with the hash from step 1

### 3. Test locally
```bash
# Uninstall current version
brew uninstall gh-switcher

# Install from local formula
brew install --build-from-source Formula/gh-switcher.rb

# Verify version and functionality
ghs help
```

### 4. Commit and push
```bash
git add Formula/gh-switcher.rb
git commit -m "gh-switcher: update to vX.Y.Z"
git push
```

Users will receive the update automatically with `brew upgrade`.

## Quick Reference

Current version: v0.1.0
Current SHA256: 01658b926ff101a4116bed8138f236567a0ef75c0cf1534a97d58469138cd5c8