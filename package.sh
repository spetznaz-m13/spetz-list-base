export MODLIST_NAME="${1:-base}"
export VERSION="${2:-0.3.0}"
export COMPILED_MODLISTS_DIRECTORY="/g/skyrim-anniversary-edition/spetz-list-compiled"
export COMPILED_MODLISTS_VERSIONED_DIRECTORY="${COMPILED_MODLISTS_DIRECTORY}/spetz-list-${MODLIST_NAME}/${VERSION}"
export COMPILER_SETTINGS_FILE="The Spetz List - ${MODLIST_NAME^}.compiler_settings"
SCRIPT_DIRECTORY="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Copy the README.md, compiler settings file, changelog, and versions.json to the compiled modlist directory.
cp "${SCRIPT_DIRECTORY}/README.md" "${COMPILED_MODLISTS_VERSIONED_DIRECTORY}/README.md"
cp "${SCRIPT_DIRECTORY}/${COMPILER_SETTINGS_FILE}" "${COMPILED_MODLISTS_VERSIONED_DIRECTORY}/${COMPILER_SETTINGS_FILE}"
cp "${SCRIPT_DIRECTORY}/profiles/spetz-list/CHANGELOG.md" "${COMPILED_MODLISTS_VERSIONED_DIRECTORY}/CHANGELOG.md"
cp "${SCRIPT_DIRECTORY}/profiles/spetz-list/versions.json" "${COMPILED_MODLISTS_VERSIONED_DIRECTORY}/versions.json"

# Package the compiled modlist into a ZIP archive.
${SCRIPT_DIRECTORY}/../../scripts/package-compiled-modlist.sh spetz-list-${MODLIST_NAME} ${VERSION}
