#!/bin/bash

set -ex

circleci orb publish ./src/orb.yml h-matsuo/github-release@dev:first
