# Spotlight Actions

Use Spotlight on macOS for fast user switching, locking the screen, putting the system to sleep, and other actions.

`spotlight-actions` generates single-action apps that can be launched through Spotlight.

![Log in as Example](https://raw.githubusercontent.com/alphabetum/spotlight-actions/master/assets/log-in-as-example.png)

## Available Actions

- "Clear Clipboard"
  - Clear the clipboard contents.
- "Color Picker"
  - Open the macOS color chooser.
- "Log in as"
  - Log in to user accounts without the fast user switching menu.
- "Login Window"
  - Open the Login Window, locking the screen.
- "Log Out"
  - Log out of the current user account.
- "Sleep"
  - Put the system to sleep.
- "Strip Clipboard Formatting"
  - Strip formatting from a string on the clipboard.

Spotlight Actions are installed in `/Applications/Spotlight Actions`.

## Installation

This is a work in progress, so just clone this repository and add the `spotlight-actions` script to your `$PATH`.

## Usage

```
Spotlight Actions

Manage Spotlight Actions.

Usage:
  spotlight-actions list
  spotlight-actions install
  spotlight-actions uninstall
  spotlight-actions -h | --help | help
  spotlight-actions --version

Subcommands:
  list       List all available actions.
  install    Install the specified action.
  uninstall  Uninstall the specified action.
  help       Display this help information.

Options:
  -h --help  Display this help information.
  --version  Display version information.
```

## Spotlight Action Definitions

### Overview

- Example.spotlight-action
  - main.scpt
    - An AppleScript script that serves as the primary executable.
  - script.sh
    - An optional shell script.
  - icon.icns
    - An optional icon file.
  - install.sh
    - An optional shell script for customizing the installation process.
  - uninstall.sh
    - An optional shell script for customizing the uninstallation process.

