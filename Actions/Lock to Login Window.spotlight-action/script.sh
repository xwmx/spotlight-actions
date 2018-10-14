#!/usr/bin/env bash
_lock_and_go_to_login_window() {
  "/System/Library/CoreServices/Menu Extras/User.menu/Contents/Resources/CGSession" -suspend
} && _lock_and_go_to_login_window
