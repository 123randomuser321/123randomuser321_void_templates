For melonDS to work, you need to put working nds firmware into the directory of the melonDS binary (/opt/melonDS/).

The files must be named:

bios7.bin
bios9.bin
firmware.bin


You also need to copy said firmware.bin to firmware.bin.bak in the same directory, otherwise melonDS will segfault, see:

github.com/Arisotura/melonDS/issues/448
