#!/usr/bin/env bash
_switch_to_user() {
  # Get username from the application bundle name.
  local _username="$(
    ps -o comm= $PPID \
    | grep -oh '[^/]\+.app' \
    | sed -e 's/Log in as //' \
    | sed -e 's/.app//' \
    | sed -e 's/MacOS//'
  )"
  local _user_id=$(id -u "${_username}")
  local _dialog_message

  if [[ -z "${_user_id:-}" ]]
  then
    read -r -d '' "_dialog_message" <<DIALOG_MESSAGE_HEREDOC
No user named '${_username}' found. To recreate Actions run:
  spotlight-actions
DIALOG_MESSAGE_HEREDOC
    osascript -e "display dialog \"${_dialog_message}\""
  elif [[ "$(whoami)" == "${_username}" ]]
  then
    osascript -e "display dialog \"Already logged in to '${_username}'.\""
  else
    "/System/Library/CoreServices/Menu Extras/User.menu/Contents/Resources/CGSession" -switchToUserID "${_user_id}"
  fi
} && _switch_to_user

