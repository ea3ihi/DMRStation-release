# DMRStation binaries

A free and open source DMR network radio by EA3IHI

## Installation

Download or clone this repository to your hardware.

You might need to add some packages to your distribution as for instance:

* pulseaudio
* libpulse-mainloop-glib0

Here you have some installation instructions when using the STM32MP157C-DK2:

```bash
echo "deb http://packages.openstlinux.st.com/1.2 thud main updates untested" >> /etc/apt/sources.list.d/packages.openstlinux.st.com.list
apt-get update
apt-get install -y libpulse-mainloop-glib0 jq
ln -s /lib/ld-linux-armhf.so.3 /lib/ld-linux.so.3

mkdir /opt
cd /opt
wget https://github.com/ea3ihi/DMRStation-release/archive/master.zip
unzip master.zip
mv DMRStation-release-master DMRStation
cd DMRStation
chmod +x *.sh
chmod +x DMRstation

```

Now edit the configuration file and make sure to have a copy of the md380-emu in the same folder and it has execute permission.
If all is ready just type `./start.sh` press enter and some magic will happen.

You can add a shell script in the `/usr/local/weston-start-at-startup/` folder to run the application at startup.
Suggestion: add a `sleep 8` to let all the services and audio devices be ready.

## Configuration

Edit `DMRStation.ini` to add your callsign, dmr id, repeater id and other values. You can also set your favourite tgs in the file `tgs.dat`.

## DMR ids database

Run `DMRIDSUpdate.sh` to download and update the list of DMR Ids.


## Running DMRStation

Run `start.sh`. You might need to set up your DISPLAY environment variable first: `DISPLAY=:0 start.sh`

