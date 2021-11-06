---
layout: post
title:  "Ultimate Guide to Octo4a"
date:   2021-10-10
categories: 3d-printing
tags: octo4a octoprint
---
The great person Gina Häußge created the Octoprint project, that allows you to control and monitor every aspect of your 3D printer and your printing jobs right from within your browser. People usually load it on a Raspberry Pi to use it but that is not the only way of using Octoprint.

If you have an old android phone laying around somewhere, Octo4a can be free solution rather than buying a Raspberry Pi. This option requires some setup to get it work but it is not unlike Raspberry Pi option.

This guide will show you how to setup your android device to act like a server for your 3D printer. It is not hard to install a few apps to get it working but I saw some people had questions and problems [on the community](https://t.me/octo4achat). I'll cover how to setup your device properly to make life easier and secure. I wont' cover the hardware setup solution, It is very different from phone to phone but essentially you need to find a way to use any USB adapter and the charge at the same time.

# Preparation
To start the setup, you should factory reset or install a custom rom from scratch to clean up your phone. Thus your phone will not use any extra resource to other applications left over from previous use case.

# Octo4a 1.0!
With the official release of the Octo4a 1.0, everything has been changed! With new foundation new version is not compatible with direct update. If you are a old user of Octo4a, I strongly suggest you to backup the current installation before you start.

Go to [Octo4a Github Page](https://github.com/feelfreelinux/octo4a/releases) and download the latest release. If you never sideloaded an APK file before [you can follow this guide on Android Authority to learn](https://www.androidauthority.com/how-to-install-apks-31494/). Long story short, you say OK or Yes when there is a prompt on screen. **Quick security reminder: Don't install any APKs you don't trust.**

After APK installation you need to install Octoprint. This is usually as straight forward as clicking a button! If anything weird happens try to uninstall the application and then re-install the APK and retry Octoprint installation. 

If you are coming from an old installation, this is the time you use your backup. After restoring you need to change serial ports to include `/dev/ttyOcto4a` and clean the black list below.
![Port Setup](/assets/2021-10-10-ultimate-guide-to-octo4a/port.png)

If you are brand new user, you can connect to octoprint UI with typing [your phones ip](https://www.makeuseof.com/tag/find-ip-address-mobile-smartphone/) followed by `:5000` into any browser. Example: `http://192.168.1.255:5000/`. You can follow the setup screen there to setup your device. If you are having problems finding the IP of your phone, you can use the browser on the phone you just setup. Just go to address `http://localhost:5000/`.

# Camera Setup
You should try out newly revamped built-in camera! It solved a lot of problems from previous Octo4a release. But due to the vast majority of different phones in the market, it sometimes has some problems or overheats the phone. I have a overheating problem due to my phone's other hardware problem, so I like to use another 3rd part webcam solution. If you had any problems with built-in camera solution. I suggest using app called IP Webcam. You can install via [Google Play](https://play.google.com/store/apps/details?id=com.pas.webcam&hl=en&gl=US) or use a trusted APK.

I suggest these settings on IP Webcam.
* Video Preferences/Video Resolution: 1280x720, 720p is enough.
* Video Preferences/Focus Mode: Smooth, for recording video.
* Power Management/Stop Camera: Disabled.
* Power Management/Deactivate Display: Enabled.
* Power Management/Keep Screen Active: Disabled.
* Power Management/Shallow Sleep: Enabled.
* Power Management/Stream on Device Boot: Enabled.
* Audio Mode: Disabled.
* Optional Permissions/Allow Streaming in Background: Enabled.

If you choose to use a 3rd part Camera Application you need to update the camera settings on Octoprint UI.

![Port Setup](/assets/2021-10-10-ultimate-guide-to-octo4a/webcam.png)

# Out of Home Access
I'm going to suggest ZeroTier for accessing your server when you are out of your home. This is a bit of a life style change but if you install ZeroTier to every device you own, you can securely access everything from everywhere. ZeroTier acts like a virtual LAN so your devices think you are connected to same modem essentially. [You can go to ZeroTier Website to learn how to set it up.](https://www.zerotier.com/download/)

Now rather than using your phone's local IP, you should use Zerotier IP of the phone. For example update the camera settings to use Zerotier IP. You can find out the IP via going inside the app and Clicking at the network name and the IP will be in the managed IP list.

<img src="/assets/2021-10-10-ultimate-guide-to-octo4a/zerotier0.png" width="50%"><img src="/assets/2021-10-10-ultimate-guide-to-octo4a/zerotier1.png" width="50%">

# Remote Access to Android
There is an open source remote access app called [Droid VNC-NG](https://github.com/bk138/droidVNC-NG). If you install this app to your phone you don't have to physical access to the phone anymore. You can connect with a VNC Client to control your phone.

Installation and setting this application is very straight forward. You can go to [Droid VNC-NG's Github Page](https://github.com/bk138/droidVNC-NG) to download and install the APK. The app will walk you through the installation. You are pretty much done with this setup except one catch. You should enable double tap to wake up feature of your phone! Whenever you connect to your phone with this application you will connect to a black screen, since your phone is locked you need to be able to unlock it. Double tap solves this since you can send a double tap through DroidVNC-NG. You can enable this via Settings/Display/Tap to Wake: Enabled.
<img src="/assets/2021-10-10-ultimate-guide-to-octo4a/double_wake.png" width="50%">

Now, You can use any VNC Client Application to access android portion of your setup to tweak in the future. I suggest VNC Viewer on Windows, iOS, Android and Remmina on Linux systems. 

# File Server to Android
When you want send a new version of APK or install something new on the phone level you might want to have a easy way to send files over. FTP Server app will create a **F**ile **T**ransfer **P**rotocol Server on your phone. Now you can use any FTP Client on your main devices. FileZilla is one of the most common FTP Client.

You can get FTP Server on [Google Play](https://play.google.com/store/apps/details?id=net.xnano.android.ftpserver&hl=en&gl=US) or use a Trusted APK file. There is very similar apps with very similar names. Whichever one works on your phone is fine.

# Robust Backup System
Nothing is forever. If your phone breaks down or something happens to octo4a files, it is hustle to set up a new instance from strach. Therefore everyone in earth needs to backup everything. There is a magical 2 step process that makes backups automatic.

First Step: You should install this Octoprint plugin called [Backup Scheduler](https://plugins.octoprint.org/plugins/backupscheduler/) This will backup your octoprint settings and plugins automatically to the your device. But saving to your device is not enough. You need to put your backups outside of the device itself.

Second Step: There is this app called [Folder Sync](https://play.google.com/store/apps/details?id=dk.tacit.android.foldersync.lite&hl=en&gl=US) that I love! You can install and the follow instructions on the app to connect it to huge list of cloud storage providers. Then you can create a Folder pair to upload your backups to those could storage providers. Here is my settings:
* Sync type: to Remote Folder.
* Local Folder: `/storage/emulated/0/Android/data/com.octo4a/files/.octoprint/data/backup` This folder location might be different for you depending on where you installed your Octo4a app. Try to find a folder called `Android` and then follow the rest of the path from there.
* Scheduled sync is enabled.
* Schedule is every 12 hours. 24 is ok but I'm paranoid.
* I disabled notifications.
* Rest of the setup is default.

Technically you can install [Google Drive access directly inside the Octoprint](https://plugins.octoprint.org/plugins/googledrivebackup/) but it required more setup and fiddling than installing the android application. If that version works and easier for you please notify me.

# (Optional) Tasker
Due to my phone being half fried, signals drops randomly. Thus whenever Wifi drops, I need to re-enable my Camera and ZeroTier apps all the time. To automate this part I installed Tasker to re-enable them automatically whenever they are disconnected.

To achieve this I installed Tasker, IP Webcam Pro, and AutoInput. IP Webcam Pro has tasker integration so I can enable camera with that integration. AutoInput is used for opening ZeroTier App and flicking the enable disable button.

If people are insterested I can write another post about Tasker and how to set that up.

# Future Extensions
## Klipper
I never used klipper, so i didn't tried to get it done. It seems like people are having some problems but I have 100% everything will iron out in short time.

## The Spagetti Detective
I tried to get TSD working. It didn't I really don't know why. But I don't need it right now so I'm just calling it a day. I think the problem is with my TSD server so I will address that later.

## Automized Deployment.
I think I have a high chance of my phone dying in a year or so and usually I'm lazy to setup everything manually. I believe I can cobble together a Ansible like program to install all the applications mentioned and even do the initial setup of them. I'm not doing it right now but wait until my phone breaks down.

# Feedback!
Thank you for reading. Posts worth less if you don't tell me how you feel about this content! If you want to chat about a improvement I can do you please let me know at blog@thrideas.com