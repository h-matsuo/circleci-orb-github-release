#!/usr/bin/env bash

set -ex

circleci orb validate src/orb.yml

circleci orb publish ./src/orb.yml h-matsuo/github-release@dev:first
