# Deno deploy template

- Action then on push tag like `v*.*.*`
- Runs on Ubuntu latest

  - Setup Deno latest
  - Compile script
  - zip script script
  - Create Release with [softprops/action-gh-release@v1](https://github.com/marketplace/actions/gh-release)
    - `files: script.zip` Custom asset
    - `body_path: CHANGELOG.md` #Body release
