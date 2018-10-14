#!/usr/bin/env bash
_toggle_desktop() {
  if [[ "$(defaults read com.apple.finder CreateDesktop)" == "1" ]]
  then
    defaults write com.apple.finder CreateDesktop -bool false && \
      killall Finder
  else
    defaults write com.apple.finder CreateDesktop -bool true && \
      killall Finder
  fi
} && _toggle_desktop
