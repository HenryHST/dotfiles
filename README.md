# dotfiles

![Lint](https://github.com/henryhst/dotfiles/workflows/Lint/badge.svg) ![Valid links](https://github.com/henryhst/dotfiles/workflows/Valid%20links/badge.svg)

## Overview

This repository contains my personal Dotfiles with configuration
for the following tools:

- [brew](https://brew.sh/)
  - [cask](https://github.com/Homebrew/homebrew-cask)
- [git](https://git-scm.com/)
- [k9s](https://k9scli.io/)
- [nvim](https://neovim.io/)
- [ssh](https://www.ssh.com/)
- [vscode](https://code.visualstudio.com/)
- [zsh](https://ohmyz.sh/)

Each of the folders present contains a dedicated `install.sh` script which
can be used to install the tool and its corresponding configuration manually.


#### nvim

![nvim](/.github/screenshots/nvim.png)

### Install

#### All

```bash
make
```

##### brew

```bash
make brew
```

Install brew, install & update packages (for brew & cask) via Brewfile.

##### git

```bash
make git
```

Create symlinks for git config.

##### k9s

```bash
make k9s
```

Create symlinks for k9s config.

<!-- markdownlint-disable -->
##### nvim
<!-- markdownlint-restore -->
```bash
make nvim
```

Create symlinks for nvim, install & update plugins.

##### ssh

```bash
make ssh
```

Create symlinks for ssh config.

##### vscode

```bash
make vscode
```

Create symlinks for vscode configuration, install extensions.


Apply warp configuration.

##### zsh

```bash
make zsh
```

Install zsh, create symlinks.