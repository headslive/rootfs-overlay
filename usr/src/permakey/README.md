# permakey
Permakey is a Linux kernel module that watches until a defined USB
device is removed from your computer and then wipes your RAM, deletes
selected files, and turns off your computer.

It is based on [silk-guardian](https://github.com/NateBrune/silk-guardian)
which itself is based on [usbkill](https://github.com/hephaest0s/usbkill).
However, it operates in an inverse way to its predecessors: instead of
panicking based on any USB activity, Permakey is designed to only watch
for the removal of one defined USB key before going into panic mode.

# Installation
First edit `config.h` with your preferred setings. Most importantly,
make sure you set your chosen USB's device ID correctly. Then compile
and install the kernel module:

```shell
make
sudo insmod permakey.ko
```

### Why?
This is useful in case you log into your computer with a YubiKey, and
want your computer to not remain powered on at all unless the YubiKey
is inserted.

### Feature List

- Shutdown the computer when chosen USB key is removed.
- Remove files before shutdown.
- Secure deletion of chosen files before shutdown.
- No dependencies.

### Change Log
1.0 - Initial release.

