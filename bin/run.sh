#!/usr/bin/env bash

set -e
set -u

"${0%/*}/speedtest-cli" --json >_.json

timestamp=$(jq -r '.timestamp' _.json)
mv _.json "$timestamp.json"
