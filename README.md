# herval/homebrew-tap

Homebrew formulae and casks for [herval](https://github.com/herval)'s projects.

```bash
brew install herval/tap/<name>
```

## What's here

| Name | Kind | What it is |
|------|------|------------|
| [littleguys](https://github.com/herval/littleguys) | cask | Menu bar home for OpenClaw, Hermes and ACP agents |

## Adding a project

Apps go in `Casks/`, CLIs and libraries in `Formula/`. Projects that release from CI keep the cask or formula source in their own repo and push it here on each release, using a fine-grained token with Contents: write on this repo. Edit those in the project's repo, not here. littleguys works this way, from [`packaging/homebrew/littleguys.rb`](https://github.com/herval/littleguys/blob/main/packaging/homebrew/littleguys.rb).
