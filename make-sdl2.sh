#!/bin/bash -e
cd SDL2
./configure --host=x86_64-unknown-linux-gnueabi --enable-shared --disable-arts --disable-esd --disable-nas --enable-alsa --enable-pulseaudio-shared --disable-rpath --disable-video-wayland
make
cd ..
cp SDL2/build/.libs/libSDL2-2.0.so.0.4.0 dist/libSDL2-2.0.4.so
