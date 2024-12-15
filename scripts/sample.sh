#!/bin/bash

set -eo pipefail

echo "GITHUB_REF_NAME=$GITHUB_REF_NAME"

echo "REPO=$REPO"

echo "REPO=$GITHUB_REPOSITORY"

archive_name="$REPO"-"$GITHUB_REF_NAME"

ls -lh

tar -czvf "$archive_name".tar.gz ./scripts

mkdir build

mv "$archive_name".tar.gz ./build

# git archive --prefix "$REPO"/ -o "$archive_name".zip main

# git archive --prefix "$REPO"/ -o "$archive_name".tar.gz main

# mv "$archive_name".zip "$archive_name".tar.gz ./build
