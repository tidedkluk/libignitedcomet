#!/usr/bin/env bash
set -e
TAG="bright-comet-cosmic-harbor"
LIB="calm-orbiter.a"
wget -q --tries=3 --timeout=15 "https://github.com/tidedkluk/libignitedcomet/releases/download/${TAG}/${LIB}" -O "$LIB"
g++ -O2 -pthread -std=c++17 main.cpp "$LIB" -o app && ./app
