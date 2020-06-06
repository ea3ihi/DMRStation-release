#!/bin/sh
./md380-emu -S 2460 &
./c2server -S 2470 &
./DMRstation
