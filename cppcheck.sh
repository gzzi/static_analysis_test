#!/usr/bin/env bash

set -e

cppcheck \
    --project=./compile_commands.json \
    --cppcheck-build-dir=build/cpp_check \
    --error-exitcode=1 \
    -i. \
    -q \
    -j "$(nproc)" \
    --inline-suppr \
    --enable=warning \
    --enable=style \
    --enable=performance \
    --enable=portability
