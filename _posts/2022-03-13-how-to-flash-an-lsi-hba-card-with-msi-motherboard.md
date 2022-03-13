---
layout: post
title: How to flash an LSI HBA card with MSI Motherboard
date: 2022-03-13 11:22 +0100
categories: home-server
tags: hardware
---
While flashing an LSI HBA card, I figured out some tidbits about my specific use case. It took me a good while to figure stuff out. I wished there was a specific tutorial for my case. I realized I can help someone in my shoes.

If you get the `ERROR: Failed to initialize PAL. Exiting program.` , this guide is for you 

# How to flash an LSI HBA card with MSI Motherboard
1. Go get a windows desktop computer.
2. Plugin your card into one of the PCIe slots.
3. Go get [Rufus](https://rufus.ie/).
4. Go get a USB stick, preferably small in size. ~4GB
5. Use Rufus to create a FreeDOS disk.
6. Find the firmware you are trying to flash, 9221-16e in my case.
7. [Find the `Shell_Full.efi` from tianocore.](https://github.com/tianocore/edk/blob/master/Other/Maintained/Application/UefiShell/bin/x64/Shell_Full.efi)
8. Find the EFI flasher program from Broadcom. [The current host is this](https://docs.broadcom.com/docs/12350820) but if the link goes dead keyword is: Installer_P20_for_UEFI
9. Put those files into the root of the USB stick.
10. Now, this is the part unique for MSI Boards.
    1.  Go to Bios.
    2.  Go to Advanced Mode (F7).
    3.  Go to Settings -> Save & Exit -> UEFI: Built-in EFI Shell. That should be on the bottom.
11. Now you need to find your USB stick and load it.
    1.  You can use `map -b` command to do so.
    2.  But I did it manually by mounting every file system and then listing the directories.
    3.  Commands you should run are: `mount FSX` where X is a number.
    4.  Followed by `FSX:` command.
    5.  Then finally running `dir`.
    6.  If you are seeing your files then you are in luck!
    7.  If not try another file system.
12. Now we will boot into the second shell. `Shell_Full.efi`
13. Since we launched a new shell we need to re-do the 11th step.
14. When you see the files run `sas2flash.efi -listall` to see whether your card is identified or not.
15. If not, you should power off. Change the card slot then re-do everything until you see your card listed.
16. Now you see your card. You need to be sure your electricity won't go off. The next steps need to run sequentially in the same power cycle.
17. Next command is to wipe your firmware. `sas2flash.efi -o -e 6`
18. The next command will reflash your firmware. `sas2flash.efi -o -f 9221it.bin -b mptsas2.rom`
19. Voila.

Yes, I did another unnecessary flashing guide. But I hope someone stuck at the PAL error will see the second shell trick!