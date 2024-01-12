#!/bin/bash

echo "[i] making image"
echo "[i] dir:"
pwd

echo "[i] fs:"
ls -la

useradd v
cp -R /workspace/cdd/ /home/v/
su -c "cd /home/v/cdd/ && build-simple-cdd --profiles test" v
