# Spotlight Actions

Use Spotlight on macOS for fast user switching, opening the login window, putting the system to sleep, and other actions.

`spotlight-actions` generates single-action apps that can be launched through Spotlight.

## Available Actions

- "Color Picker"
    - Open the macOS color chooser.
- "Log Out"
    - Logs out of the current user account.
- "Login Window"
    - Opens the Login Window, locking the screen.
- "Sleep"
    - Puts the system to sleep.

![Login Window Example](https://raw.githubusercontent.com/alphabetum/spotlight-actions/master/assets/login%20window.png)

## Account Login Actions

`spotlight-actions` generates an action for each user account on the system, named after each username, which opens the login window for that account, just like the fast user switching menu.

![Spotlight Username Example](https://raw.githubusercontent.com/alphabetum/spotlight-actions/master/assets/username.png)

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

