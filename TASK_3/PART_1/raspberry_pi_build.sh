#!/bin/bash
git clone https://github.com/akhtyamovpavel/PatternsCollection.git
git clone https://github.com/raspberrypi/tools.git
export PATH="$PATH:../tools/arm-bcm2708/arm-rpi-4.9.3-linux-gnueabihf/bin/"
mkdir tmp_build
cd tmp_build
cmake -DON_PI=ON -DSYSROOT="../tools/arm-bcm2708/arm-rpi-4.9.3-linux-gnueabihf/arm-linux-gnueabihf/sysroot/" ../PatternsCollection
make
cd ../
rm -rf tmp_build
