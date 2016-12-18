#!/usr/bin/env bash

# App entry point, invoked by our AppleScript

# cd to a predictable working directory; the directory containing this script
__dirname="$(CDPATH= cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cd "$__dirname"

case "$1" in
    url)
        url="$2"
        # Handle URLs here
        ;;
    file)
        file="$2"
        # Handle files here
        ;;
    run)
        # Run the app without opening anything
        ;;
    *)
        echo "Error: unsupported first argument \"$1\""
        exit 1
esac
