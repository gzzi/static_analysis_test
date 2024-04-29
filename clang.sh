#!/usr/bin/env bash

set -e

# scan-build --keep-going -o build/html ./build.sh --

clang-tidy \
    -p build \
    -checks=*,-llvmlibc-callee-namespace,-llvmlibc-implementation-in-namespace \
    -warnings-as-errors=* \
    -quiet \
    bad_code.cpp \
    main.cpp \
    --
