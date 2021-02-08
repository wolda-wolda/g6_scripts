#!/bin/bash

rm -rf vendor/lineage/
rm -rf vendor/lge/
rm -rf frameworks/base/
rm -rf kernel/lge/msm8996/
rm -rf device/lge/msm8996-common/
rm -rf device/lge/h870/
rm -rf device/lge/h872/
rm -rf device/lge/us997/


repo init -u https://github.com/PixelExtended/manifest -b eleven
cd .repo
git clone https://github.com/wolda-wolda/local_manifests.git -b lineage-18.1
cd ..
repo sync -c -q --force-sync --optimized-fetch --no-tags --no-clone-bundle --prune -j$(nproc --all)
source build/envsetup.sh


