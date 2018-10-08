#!/usr/bin/env bash
_go_to_login_window() {
  "/System/Library/CoreServices/Menu Extras/User.menu/Contents/Resources/CGSession" -suspend
} && _go_to_login_window
