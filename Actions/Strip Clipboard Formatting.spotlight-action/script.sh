#!/usr/bin/env bash
pbpaste | sed $'s/[^[:print:]\t]//g' | pbcopy
