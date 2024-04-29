#!/usr/bin/env bash

set -e

mkdir -p build

g++ -Os -Wall -Wdisabled-optimization -Werror -Wextra -std=gnu++20 -o build/bad_code.o -c bad_code.cpp
g++ -Os -Wall -Wdisabled-optimization -Werror -Wextra -std=gnu++20 -o build/main.o -c main.cpp
g++ -Os -Wall -Wdisabled-optimization -Werror -Wextra -std=gnu++20 -o build/main build/bad_code.o build/main.o
