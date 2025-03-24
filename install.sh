#!/usr/bin/env bash

SH_PATH=${DAT_PATH:-/usr/local/share/seuconnect}

JSON_PATH=${JSON_PATH:-/usr/local/etc/seuconnect}
check_if_running_as_root() {
  if [[ "$UID" -ne '0' ]]; then
    echo "Not running with root, exiting..."
    exit 1
  fi
}