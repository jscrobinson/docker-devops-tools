#!/bin/bash

if [[ -v FAKE_DATETIME ]]; then
date -s "$FAKE_DATETIME"
echo "Set date to $FAKE_DATETIME"
date
fi

exec "$@"