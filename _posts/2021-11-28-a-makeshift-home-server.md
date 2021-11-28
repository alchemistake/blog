---
layout: post
title: A Makeshift Home Server
date: 2021-11-28 21:05 +0100
categories: home-server
tags: hardware
---
One of the things I'm annoyed at is that everyone has a very nice "Home Server Rack" with several 1U Servers and a 1U Network Switch. But I'm sure for every hi-end home server there is 2 makeshift home servers. I decided to share mine to show that you don't need to have space for Rack mounted 2000-3000$ Home Server setup. You just need something that satisfies your home computation needs.

# Base Machine
I started using my 2014 Macbook Pro as the Home Server when my work provided me a new laptop in 2018. It served me nice but the poor laptop was struggling when I was trying to use it for anything. I re-installed MacOs and Docker to get started. I was only using plex and some minimal stuff so that setup was working quite nice. But the overhead of a graphical user interface and MacOs's poor remote access features pushed me over the edge. I decided to convert everything to [Linux and Kubernetes](https://github.com/alchemistake/my-home-kluster) since It is the easiest thing to manage for me.

<img src="/assets/2021-11-28-a-makeshift-home-server/ssd_converter.jpg" width="50%" style="display:block;margin-left:auto;margin-right:auto;"/>
I upgraded the internal storage to 1 TB. [I bought one of NVMe to Macbook SSD converters](https://www.amazon.co.uk/gp/product/B01CWWAENG/ref=ppx_yo_dt_b_asin_title_o03_s00?ie=UTF8&psc=1), I poured bunch of time for research, more than necessary. You need to buy the correct converter for your own mac, most of the stuff online are garbage don't take my choice as gospel. There are very detailed guides. They are not that good for daily use, *e.g.* they require re-flashing some chips *etc.* But to use it on Linux and as a server I just needed to plug everything in and then puff it worked.

# Networking
My laptop stays in a metal shelf and wifi signal is very poor. For a long time I used a USB wifi card with a long USB cable to it outside of the faraday cage of doom. But then I realized USB Wifi cards does not provide good enough connection speeds. [So I installed a full fledged Wifi Router as the externel network card. I won't go into details because I already wrote some stuff for that.]({% post_url 2021-11-06-a-peculiar-case-of-a-home-networking %})

# NAS & Harddisks
<img src="/assets/2021-11-28-a-makeshift-home-server/hdd_cage.jpg" width="50%" style="display:block;margin-left:auto;margin-right:auto;"/>
I decided to add more storage and add NAS Capability. I bought two of 5 Drive Cage for that. I shucked my external HDDs that I have laying around. I own too much external HDDs. I decided to use USB hubs I collected over the years to connect them to my Macbook. This is not a perfect solution at all but since my base machine is a Macbook this is one the only solutions I can use. It will not be the best but it will be at least good enough for my use case. I'm connecting to this device over Wifi so I can handle slower connection speeds on HDDs since wifi will be the bottleneck.

<img src="/assets/2021-11-28-a-makeshift-home-server/smol_hdd.jpg" width="50%" style="display:block;margin-left:auto;margin-right:auto;"/>
I had several smol HDDs from smol external HDDs. Rather than buying a 2.5 to 3.5 converter, I decided to [3D print this design](https://www.thingiverse.com/thing:606950). This design was very fast to print but after using them for a while I see that they are not eligible for the job. The print orientation and the placement of the 2.5 HDDs makes it impossible to stack them inside of the 5 Bay cage. I'll redesign something very soon, but they are good enough now.

I needed a PSU for the all the HDDs I'm going to add. I was going to upgrade my desktop's PSU so I decided to pull that upgrade little bit closer and used my old PSU and upgraded my computer's PSU. I used a [PSU power breakout board](https://www.aliexpress.com/item/4001358646207.html) to have easy access to the different voltages. I'll add a variable power converter to achive a 9V and 19.5V line in the future.

# Sum of all Parts
<img src="/assets/2021-11-28-a-makeshift-home-server/sum_of_parts.jpg" width="100%" style="display:block;margin-left:auto;margin-right:auto;"/>
Since everything was loose parts around I decided to screw everything to a board I had from a broken Lack Table. I needed to shorted the board to make it fit inside of the shelving unit I have. It took around 5 Minutes. I hot glued the USB hub and Wifi Router. I used hot glue because it is strong enough to hold a USB hub and removable. I didn't want to use hot glue for the Wifi Router but the wall mount holes were too small for any screw I had so I just used hot glue.

To mount the HDD Cages I needed to drill big hole on top to pass the screw driver. It was not a big time waster. When that was ready I placed down a sheet of old bicycle inner tube I had since 2017 when I fucked up a bicycle ride. This will act like a vibration dampener. If you are still using bicycle inner tubes I suggest you hold on to the old ones. They are very handy insulator and elastic material.

<img src="/assets/2021-11-28-a-makeshift-home-server/psu.jpg" width="50%" style="display:block;margin-left:auto;margin-right:auto;"/>
I didn't want to use hot glue for everything though. Since everything that was mountable was mounted, I decided to use 3D Printed Brackets. [I used this ATX PSU Bracket](https://www.thingiverse.com/thing:1869903). It is not the mechanically best part, but it was the fastest to print. I designed a simple L shape to hold the macbook in place. Thus most of the stuff were ready.
<img src="/assets/2021-11-28-a-makeshift-home-server/l_bracket.jpg" width="50%" style="display:block;margin-left:auto;margin-right:auto;"/>

Everything plugs in to a UPS I had since college that can handle up to 500W. If electricity goes out, I will hold everything up to 15 minutes. It is not a long time for UPS but It is a long time to detect Power Outage and shutdown everything safely.

# Farewell!
It is still not 100% Complete but I wanted to give a voice to the jank setups that exists. As you can notice most of the parts were stuff I already owned and repurposed, don't hesitate to repurpose your old junk! In future, I'll work on cable management and adding Raspberry Pis into the mix. Currently, I have problems with software more than hardware I think I'll focus on that front more.
<img src="/assets/2021-11-28-a-makeshift-home-server/finale.jpg" width="100%" style="display:block;margin-left:auto;margin-right:auto;"/>

# Feedback!
Thank you for reading. Every quest worths less if you don't tell me how you feel about this content! If you want to chat about a improvement I can do you please let me know at blog@thrideas.com