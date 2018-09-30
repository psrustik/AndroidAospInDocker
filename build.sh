#!/bin/bash

prebuilts/misc/linux-x86/ccache/ccache -M 50G
source build/envsetup.sh
lunch p212-userdebug-64
make installclean
make clean
time make -j3 
