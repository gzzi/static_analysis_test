#!/usr/bin/env bash

set -e

# scan-build --keep-going -o build/html ./build.sh --

clang-tidy \
    -p build \
    -checks=* \
    -warnings-as-errors=* \
    -quiet \
    bad_code.cpp \
    main.cpp \
    --
