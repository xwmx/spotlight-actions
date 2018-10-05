# spotlight-actions

Use Spotlight on macOS for fast user switching, opening the login window, putting the system to sleep, and other actions.

`spotlight-actions` generates small application bundles that perform discrete actions.

## Actions

- "Login Window.app"
    - Opens the Login Window.
- "Sleep.app"
    - Puts the system to sleep.
- "Log Out.app"
    - Logs out of the current user account.

![Login Window Example](https://raw.githubusercontent.com/alphabetum/spotlight-actions/master/screenshots/login%20window.png)

## Account Login Actions

`spotlight-actions` generates an action for each user account on the system, named after each username, which open the login window for that account, just like using the fast user switching menu.

![Spotlight Username Example](https://raw.githubusercontent.com/alphabetum/spotlight-actions/master/screenshots/username.png)

All applications are installed in `/Applications/Spotlight Actions`.

## Usage

Simply download and run `spotlight-actions` from the terminal to generate the action application bundles in `/Applications/Spotlight Actions`
