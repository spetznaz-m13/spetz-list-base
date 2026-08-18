#!/usr/bin/env bash

set -eu
set -o pipefail

export MODLIST_NAME="base"
export REPO_DIRECTORY="/g/skyrim-anniversary-edition/wabbajack-compiled/spetz-list-${MODLIST_NAME}/git"
export MO2_DIRECTORY="/g/skyrim-anniversary-edition/wabbajack-uncompiled/spetz-list-${MODLIST_NAME}"
export EXPECTED_REPO_ORIGIN="git@github.com:spetznaz-m13/spetz-list-${MODLIST_NAME}.git"
export COMPILER_SETTINGS_FILE="The Spetz List - ${MODLIST_NAME^}.compiler_settings"
SYNC_SCRIPT="/g/skyrim-anniversary-edition/spetz-list/scripts/sync-mo2.sh"

# Sync the modlist's MO2 files with the Git repo.
"${SYNC_SCRIPT}" "spetz-list"
