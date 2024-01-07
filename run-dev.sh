#!/bin/bash

if [ -d build/ ]; then
    echo "Build directroy exist, nuking"
    rm -r build
fi

cp -R root build

python build/src/shell.py
