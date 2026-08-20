#!/usr/bin/env bash

set -eu
set -o pipefail

MODLIST_NAME="spetz-list-base"
SYNC_SCRIPT="/g/skyrim-anniversary-edition/spetz-list/scripts/sync-mo2.sh"

# Sync the modlist's MO2 files with the Git repo.
"${SYNC_SCRIPT}" \
  --mo2-dir "/g/skyrim-anniversary-edition/wabbajack-uncompiled/${MODLIST_NAME}" \
  --git-dir "/g/skyrim-anniversary-edition/wabbajack-compiled/${MODLIST_NAME}/git"
