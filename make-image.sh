#!/bin/bash

echo "[i] making image"
echo "[i] dir:"
pwd

echo "[i] fs:"
ls -la

cd ccd/

useradd v
su -c "build-simple-cdd --profiles test" v
