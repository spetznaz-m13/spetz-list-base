export MODLIST_NAME="${1:-base}"
export REPO_DIRECTORY="/g/skyrim-anniversary-edition/spetz-list"
export MO2_DIRECTORY="/g/skyrim-anniversary-edition/spetz-list-uncompiled/${MODLIST_NAME}"
export EXPECTED_REPO_ORIGIN="git@github.com:spetznaz-m13/spetz-list.git"
export COMPILER_SETTINGS_FILE="The Spetz List - ${MODLIST_NAME^}.compiler_settings"
SCRIPT_DIRECTORY="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Sync the modlist's MO2 files with the Git repo.
${SCRIPT_DIRECTORY}/../../scripts/sync-mo2.sh spetz-list
