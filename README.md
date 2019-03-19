# Git Multi-repository Status

Simple Python script that finds Git repositories under the current directory and lists their status (with helpful status symbols and color coding).

Optionally can fetch updates from the server before comparing, or pull all repositories that are behind origin.

## Usage

```shell
gitmstatus [-h] [-d] [-f] [-p] [--completion]

optional arguments:
  -h, --help    show this help message and exit
  -d, --debug   print 'git status' output
  -f, --fetch   do a 'git fetch' before status
  -p, --pull    pull branches behind origin instead of showing the status
  --completion  output fish shell completion commands

status indicators:
    ☑️ : local repository is up to date with origin
    🐌 : local is behind origin
    🐇 : local is ahead of origin
    🆕 : repository has new files
    👀 : repository has modified files
    📍 : only local repository, no remote
    ⁉️ : status unknown
```

## Installation

Just download the `gitmstatus` script and put it in your path.

Python 3 needs to be installed and `python3` needs to be somewhere in the path.

If you use the [fish shell](https://fishshell.com/), the script can print autocomplete definitions for you:

    gitmstatus --completion > ~/.config/fish/completions/gitmstatus.fish
