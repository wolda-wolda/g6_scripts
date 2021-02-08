source scripts/sync.sh
make clean
export ALLOW_MISSING_DEPENDENCIES=true
rm -rf packages/apps/Updater/
lunch aosp_h870
mka bacon -j12
