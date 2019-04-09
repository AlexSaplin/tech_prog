#!/bin/bash
git clone https://github.com/akhtyamovpavel/PatternsCollection.git
sudo apt-get install doxygen libgtk-3-dev gsasl gnutls-bin libghc-gsasl-dev libgnutls-dev sendmail libboost-all-dev
mkdir tmp_build
cd tmp_build
cmake ../PatternsCollection
make
cd../
rm -rf build
cd ../bin
./Decorator
