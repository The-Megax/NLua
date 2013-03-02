#!/bin/sh
cd Core/KeraLua
make -f Makefile.OSX
xbuild KeraLua.sln /p:Configuration=Release
cd ../../
cp Core/KeraLua/external/lua/osx/lib/liblua51.dylib tests/liblua51.dylib
cd tests/
nunit-console LuaInterfaceTest.dll
