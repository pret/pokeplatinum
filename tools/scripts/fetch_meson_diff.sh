#!/usr/bin/env bash

set -eo pipefail

cd "$(git rev-parse --show-toplevel)"

PR_ID=${1}
PATCH_DIR=subprojects/packagefiles/meson_patch
MESON_GIT=https://github.com/mesonbuild/meson
TARGET="${PATCH_DIR}/${PR_ID}.patch"

FILTERED_PATCH=$(curl -fSL -X GET "${MESON_GIT}/pull/${PR_ID}.diff" \
    | sed -n '/^diff --git a\/mesonbuild/,$p')
DIFF_LINES=$(grep -n 'diff --git' <<< "${FILTERED_PATCH}")
NOT_MESONBUILD=$(grep -v 'diff --git a/mesonbuild' <<< "${DIFF_LINES}" || true)
LINE_EXCLUDE=$(head -n 1 <<< "${NOT_MESONBUILD}" | cut -d ':' -f 1)

if [ -n "${LINE_EXCLUDE}" ]; then
    FILTERED_PATCH=$(head -n "$((LINE_EXCLUDE - 1))" <<< "${FILTERED_PATCH}")
fi

echo "# Upstream PR: ${MESON_GIT}/pull/${PR_ID}" > "${TARGET}"
echo "${FILTERED_PATCH}" >> "${TARGET}"
