# spotlight-login-shortcuts

Use Spotlight on macOS for fast user switching, opening the login window, putting the system to sleep, and other account operations.

`spotlight-login-shortcuts` is a little shell script that generates an application bundle for each username on the system. When one these applications is launched with Spotlight, the login window for that account is opened, just as if the account is selected in the menu bar dropdown.

![Spotlight Username Example](https://raw.githubusercontent.com/alphabetum/spotlight-login-shortcuts/master/images/username.png)

Additional application bundles are created for other account operations
including:

- "Login Window.app"
    - Opens the Login Window.
- "Sleep.app"
    - Puts the system to sleep.
- "Log Out.app"
    - Logs out of the current user account.

![Login Window Example](https://raw.githubusercontent.com/alphabetum/spotlight-login-shortcuts/master/images/login%20window.png)

All applications are installed in `/Applications/Spotlight Shortcuts`.

## Usage

1. Install https://github.com/alphabetum/accounts
2. Run `spotlight-login-shortcuts` from the terminal to generate the application bundles in `/Applications/Spotlight Shortcuts`
