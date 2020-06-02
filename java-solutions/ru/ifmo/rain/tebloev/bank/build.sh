#!/bin/bash

workingdir="$(cd "$(dirname "${BASH_SOURCE[0]}")" >/dev/null 2>&1 && pwd)"
cd "$workingdir" || exit 1

rm -rf "$workingdir/_build"

cd ../../../../../../
modulepath="../java-advanced-2020/lib/:../java-advanced-2020/artifacts/"
output="$workingdir/_build"
# shellcheck disable=SC2046
javac -p "$modulepath" -d "$output" $(find . -name "*.java")
