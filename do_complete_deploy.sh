#!/bin/bash
set -e
set -u

cd "$(dirname "$0")"

./prep_repo_for_deploy.sh

mkdir -p /apps/codeandstuff.se

rm -rf /apps/codeandstuff.se/*

rsync -a site/* /apps/codeandstuff.se