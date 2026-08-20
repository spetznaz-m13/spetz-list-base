#!/usr/bin/env bash

set -eu
set -o pipefail

# Set the Spetz List Base inputs and shared script paths.
REPO_DIRECTORY="/g/skyrim-anniversary-edition/wabbajack-compiled/spetz-list-base/git"
MO2_PROFILE="spetz-list"
COMPILED_MODLISTS_DIRECTORY="/g/skyrim-anniversary-edition/wabbajack-compiled/spetz-list-base"
PREPARE_SCRIPT="/g/skyrim-anniversary-edition/spetz-list/scripts/prepare-compiled-modlist.sh"
PACKAGE_SCRIPT="/g/skyrim-anniversary-edition/spetz-list/scripts/package-compiled-modlist.sh"

# Derive the compiled version directory from the repository version.
VERSION=$(<"${REPO_DIRECTORY}/VERSION")
VERSION=${VERSION%$'\r'}
COMPILED_MODLIST_DIRECTORY="${COMPILED_MODLISTS_DIRECTORY}/${VERSION}"

# Prepare the compiled modlist.
"${PREPARE_SCRIPT}" \
  --repo-dir "${REPO_DIRECTORY}" \
  --mo2-profile "${MO2_PROFILE}" \
  --compiled-modlist-dir "${COMPILED_MODLIST_DIRECTORY}"

# Package the compiled modlist.
"${PACKAGE_SCRIPT}" \
  --compiled-modlist-dir "${COMPILED_MODLIST_DIRECTORY}"
