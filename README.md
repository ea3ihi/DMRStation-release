# DMRStation binaries

A free and open source DMR network radio by EA3IHI

## Installation

Download or clone this repository to your hardware.

You might need to add some packages to your distribution as for instance:

* pulseaudio
* libpulse-mainloop-glib0

## Configuration

Edit `DMRStation.ini` to add your callsign, dmr id, repeater id and other values. You can also set your favourites tgs in the file `tgs.dat`.

## DMR ids database

Run `DMRIDSUpdate.sh` to download and update the list of DMR Ids.



## Running DMRStation

Run `start.sh`. You might need to set up your DISPLAY environment variable first: `DISPLAY=:0 start.sh`

