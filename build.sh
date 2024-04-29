#!/usr/bin/env bash

set -e

mkdir -p build

CXX=${CXX:-g++}

if [ "$CXX" = "g++" ]; then
    CXXFLAGS="-fanalyzer"
fi

$CXX -Os $CXXFLAGS -Wall -Werror -Wextra -std=gnu++20 -o build/bad_code.o -c bad_code.cpp
$CXX -Os $CXXFLAGS -Wall -Werror -Wextra -std=gnu++20 -o build/main.o -c main.cpp
$CXX -Os -lstdc++ -Wall -Werror -Wextra -std=gnu++20 -o build/main build/bad_code.o build/main.o
