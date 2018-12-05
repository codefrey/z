#!/usr/bin/env bash

# Usage: websize <URL>
# Downloads a web page including assets and displays the total size downloaded.
# Note: doesn't take 'Content-Encoding' compression into account.

set -e

[[ -z $1 ]] && abort=1 || abort=0

if [[ $abort -gt 0 || $1 = "-h" || $1 = "--help" ]]; then
  sed -ne '/^#/!q;s/.\{1,2\}//;1d;p' < "$0" >&$((abort+1))
  exit $abort
fi

wget "$1" --page-requisites --no-verbose \
  -O "${TMPDIR:-/tmp}/wget-size" 2>&1 | tail -1
