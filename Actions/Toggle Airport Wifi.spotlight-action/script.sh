#!/usr/bin/env bash
_AIRPORT_CMD="/System/Library/PrivateFrameworks/Apple80211.framework/Versions/A/Resources/airport"
_toggle_airport_wifi() {
  local _networksetup_cmd=
  local _wifi_interface=
  local _subcommand="info"
  local _arguments=()

  _networksetup_cmd="$(which networksetup)"

  # Command references:
  # - http://apple.stackexchange.com/a/90516
  # - https://jamfnation.jamfsoftware.com/discussion.html?id=4849
  _wifi_interface="$(
    "$_networksetup_cmd" \
      -listallhardwareports | awk '/Wi-Fi|AirPort/ {getline; print $NF}'
  )"

  if [[ "$("${_AIRPORT_CMD}" --getinfo)" == "AirPort: Off" ]]
  then
    "$_networksetup_cmd" -setairportpower "$_wifi_interface" on
  else
    "$_networksetup_cmd" -setairportpower "$_wifi_interface" off
  fi
} && _toggle_airport_wifi
