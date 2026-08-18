#!/usr/bin/env bash

set -eu
set -o pipefail

# Set the color variables.
COLOR_DEFAULT=$'\e[0m'
COLOR_RED=$'\e[31m'

# Set the output labels.
LABEL_ERROR="${COLOR_RED}[ERROR]${COLOR_DEFAULT}"

# Set the script inputs.
VERSION="${1:-}"
MODLIST_NAME="base"
export COMPILED_MODLISTS_DIRECTORY="/g/skyrim-anniversary-edition/wabbajack-compiled"
COMPILED_MODLISTS_VERSIONED_DIRECTORY="${COMPILED_MODLISTS_DIRECTORY}/spetz-list-${MODLIST_NAME}/${VERSION}"
COMPILER_SETTINGS_FILE="The Spetz List - ${MODLIST_NAME^}.compiler_settings"
GIT_DIRECTORY="/g/skyrim-anniversary-edition/wabbajack-compiled/spetz-list-${MODLIST_NAME}/git"
GIT_VERSION="$(cat "${GIT_DIRECTORY}/VERSION")"
PACKAGE_SCRIPT="/g/skyrim-anniversary-edition/spetz-list/scripts/package-compiled-modlist.sh"

# Fail if the version argument is not provided.
if [[ -z "${VERSION}" ]]
then
    printf "${LABEL_ERROR}: Version argument is required.\n"
    exit 1
fi

# Fail if the version directory does not exist.
if [[ ! -d "${COMPILED_MODLISTS_VERSIONED_DIRECTORY}" ]]
then
    printf "${LABEL_ERROR}: Compiled modlist version directory '${COMPILED_MODLISTS_VERSIONED_DIRECTORY}' does not exist.\n"
    exit 1
fi

# Fail if the git version does not match the provided version.
if [[ "${VERSION}" != "${GIT_VERSION}" ]]
then
    printf "${LABEL_ERROR}: The provided version '${VERSION}' does not match the version '${GIT_VERSION}' in Git.\n"
    exit 1
fi

# Set the list of files to copy from the Git repo to the compiled modlist directory.
COPY_FILE_LIST=(
    "${GIT_DIRECTORY}/README.md"
    "${GIT_DIRECTORY}/VERSION"
    "${GIT_DIRECTORY}/modlists.json"
    "${GIT_DIRECTORY}/mo2/${COMPILER_SETTINGS_FILE}"
    "${GIT_DIRECTORY}/mo2/profiles/spetz-list/versions.json"
    "${GIT_DIRECTORY}/mo2/profiles/spetz-list/CHANGELOG.md"
)

# Validate that the required files exist before proceeding.
for file in "${COPY_FILE_LIST[@]}"
do
    if [[ ! -f "${file}" ]]
    then
        printf "${LABEL_ERROR}: Required file '${file}' does not exist.\n"
        exit 1
    fi
done

# Copy the required files from the Git repo to the compiled modlist directory.
for file in "${COPY_FILE_LIST[@]}"
do
    cp "${file}" "${COMPILED_MODLISTS_VERSIONED_DIRECTORY}/$(basename "${file}")"
done

# Move any .json and .html files to the metadata directory.
mkdir -p "${COMPILED_MODLISTS_VERSIONED_DIRECTORY}/metadata"
find "${COMPILED_MODLISTS_VERSIONED_DIRECTORY}" -type f -name "*.json" -or -name "*.html" -or -name "*.compiler_settings" | xargs -I {} mv "{}" "${COMPILED_MODLISTS_VERSIONED_DIRECTORY}/metadata/"

# Package the compiled modlist into a ZIP archive.
"${PACKAGE_SCRIPT}" "spetz-list-${MODLIST_NAME}" "${VERSION}"
