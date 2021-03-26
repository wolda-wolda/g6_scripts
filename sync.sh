#!/bin/bash

rm -rf device/lge
rm -rf kernel/lge
rm -rf vendor/lge

#repo init -u https://github.com/PotatoProject/manifest -b dumaloo-release
cd .repo/local_manifests
git merge origin A11
cd ..
cd ..
repo sync --force-sync -j12

cd frameworks/base
git fetch extras
git cherry-pick 2bb23e9ca3adb657b64147e29c53fd7dac383bb6 e4af95d7a4da898ef0ac2e9085806cd0f8cbc0b2
cd ..
cd ..
