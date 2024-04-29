#!/usr/bin/env bash

set -e

scan-build --keep-going -o /tmp/html ./build.sh --

# clang-tidy bad_code.cpp
