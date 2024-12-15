#!/bin/bash

set -eo pipefail

echo "GITHUB_REF_NAME=$GITHUB_REF_NAME"

echo "REPO=$REPO"

echo "REPO=$GITHUB_REPOSITORY"

archive_name="$REPO"-"$GITHUB_REF_NAME"

mkdir build

cd build

git archive --prefix "$REPO"/ -o "$archive_name".zip main
git archive --prefix "$REPO"/ -o "$archive_name".tar.gz main
