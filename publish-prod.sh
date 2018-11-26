#!/usr/bin/env bash

set -e

# Check whether option is given
if [[ -z "$1" ]]; then
  echo '[ERROR] Specify version.' >&2
  exit 1
fi

VERSION=$1

echo "Publish this orb as h-matsuo/github-release@${VERSION}"
read -p 'Are you sure? (Y/N): ' INPUT
if [[ $INPUT != 'Y' && $INPUT != 'y' ]]; then
  echo 'Abort.'
  exit
fi

circleci orb validate src/orb.yml

circleci orb publish ./src/orb.yml h-matsuo/github-release@${VERSION}
