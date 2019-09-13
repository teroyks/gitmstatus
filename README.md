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

### Requirements

Python 3 needs to be installed and `python3` needs to be somewhere in the path.

The [`tqdm`](https://pypi.org/project/tqdm/) module is used for the progress bar, it needs to be installed either globally or with virtualenv.

```shell
pip3 install tqdm
```

### Script Installation

Just download the `gitmstatus` script and put it somewhere in your path.

If you used a local installation for `tqdm`, create an alias or a shell script in your path that either initializes the virtual environment, or runs the script using the python binary installed in the virtual env directory.

### Autocompletion

If you use the [fish shell](https://fishshell.com/), the script can print autocomplete definitions for you:

```shell
gitmstatus --completion > ~/.config/fish/completions/gitmstatus.fish
```
