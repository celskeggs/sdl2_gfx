#!/bin/bash -e
PREFIX=$(pwd)/prefix/
HOST=x86_64-unknown-linux-gnueabi

cd SDL2
./configure --host=$HOST --prefix=$PREFIX --enable-shared --disable-arts --disable-esd --disable-nas --enable-alsa --enable-pulseaudio-shared --disable-rpath --disable-video-wayland
make
make install
cd ..
find prefix

cd SDL2_gfx
./configure --host=$HOST --prefix=$PREFIX --enable-shared
make
make install
cd ..
find prefix
