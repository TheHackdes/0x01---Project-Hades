#!/bin/bash

set -e

source package_base.sh

if declare -f "$1" > /dev/null
then
  "$@"
else
  echo "Probleme dans le nom de fonction : '$1'" >&2
  exit 1
fi
