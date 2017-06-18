#!/bin/sh
rm sqlite-netFx-*
rm -R source
mkdir source
wget "http://system.data.sqlite.org/blobs/1.0.105.2/sqlite-netFx-full-source-1.0.105.2.zip"
unzip sqlite-netFx-full-source-1.0.105.2.zip -d source
cd source/Setup
chmod +x compile-interop-assembly-release.sh
./compile-interop-assembly-release.sh
cd ../../
mkdir build
mkdir build/x64
mv source/bin/2013/Release/bin/libSQLite.Interop.so ./build/x64/
chmod -x build/x64/*.so
file build/x64/*.so
