#!/bin/bash

echo "[i] making image"
echo "[i] dir:"
pwd

echo "[i] fs:"
ls -la

useradd -m v

echo "[i] homes:"
ls -la /home/

echo "[i] copying cdd"
su -c "cp -R /workspace/cdd/ /home/v/" v
su -c "chown -R v:v /home/v/" v

echo "[i] v files:"
ls -la /home/v/
ls -la /home/v/cdd/

su -c "cd /home/v/cdd/ && build-simple-cdd --profiles test" v
