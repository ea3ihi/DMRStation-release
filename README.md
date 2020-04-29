# DMRStation binaries

A free and open source DMR network radio by EA3IHI

## Installation

Download or clone this repository to your hardware.

You might need to add some packages to your distribution as for instance:

* pulseaudio
* libpulse-mainloop-glib0

Here you have some installation instructions when using the STM32MP157C-DK2:

```
mkdir /opt
cd /opt
wget https://github.com/ea3ihi/DMRStation-release/archive/master.zip
unzip master.zip
mv DMRStation-release-master DMRStation
cd DMRStation
chmod +x *.sh
chmod +x DMRstation
apt-get install -y libpulse-mainloop-glib0 jq
ln -s /lib/ld-linux-armhf.so.3 /lib/ld-linux.so.3
```

Now edit the configuration file and make sure to have a copy of the md380-emu in the same folder.
If all is ready just run `./start.sh` and some magic will happen.

You can add a shell script in the `/usr/local/weston-start-at-startup` to run the application at startup. Suggestion: add a `sleep 8` to let all the services and audio devices be ready.

## Configuration

Edit `DMRStation.ini` to add your callsign, dmr id, repeater id and other values. You can also set your favourites tgs in the file `tgs.dat`.

## DMR ids database

Run `DMRIDSUpdate.sh` to download and update the list of DMR Ids.



## Running DMRStation

Run `start.sh`. You might need to set up your DISPLAY environment variable first: `DISPLAY=:0 start.sh`

