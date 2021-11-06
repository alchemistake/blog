---
layout: post
title:  "A peculiar case of a home networking"
date:   2021-11-06
categories: home-server
tags: networking
---
I have a very unique and weird home server setup, I believe it will be interesting to tell about it. I'll run through I have configured my server.

In my current house we have the internet port in the middle of the living room and I wanted to have the server in the small storage closet the other side of the house. Directly they are about 8 meters or so apart. Which can be done with an ethernet cable but due to sliding doors there is no way to route them without disabling the door from opening and closing. So I looked into getting powerline ethernet connections, I realized that there is multiple extension cords in between which reduces the effectiveness of these type of adapters. I decided to use a USB Wifi adapter to get some internet. I used this solution for a while then I realized using 2.4 GHz Wifi is slow for some of my use cases. For example, backing up my computer (~3TB) takes exteremely long and for some odd reason clogs all the other connections on my local network. Which prevents my wife from doing anything online. Rather than buying another and more powerful USB Wifi adapter, I decided to go with a cheapskate route.

I found an "AC1200" router which supports OpenWRT for little to none. OpenWRT (__Open__ <b>W</b>ireless <b>R</b>ou<b>T</b>er) is an open source router operating system that unlocks a lot of features that router companies are lazy to enable. AC1200 stands for combined speed of Wifi 5 mode and Wifi 4 mode (867 + 300 ~= 1200 Mbps).

[I installed OpenWRT following official OpenWRT tutorial.](https://openwrt.org/toh/netgear/r6120) Then I set it up to connect to main router of my house using Wifi 5, Which will provide faster speed than both Wifi 4 and Powerline adapter. TLDR; I essentially bought another router and spend some time to convert it to a wifi adapter. This might seem overkill for now but let me justify myself.

[I have Octo4a running on a phone]({% post_url 2021-10-10-ultimate-guide-to-octo4a %}). I want to isolate it from my main network to reduce security risks. So I set up Wifi 4 antenna to create a second Wifi SSID to just handle Octo4a and the smart power strip I use to power up/down my 3d printer. Also I wanted to have it connection to local area network even if power goes down. I added an uninterruptible power supply (UPS) for the router. Thus In case of emergency I can run a automation to make it safe when power comes back. 3D printers are dangerous devices I don't want to start a fire by accident in the case of power surge.

Second reason: I have a plan to include all of my Raspberry Pies I own as a extension of the server to offload the work. Thus having a shared LAN interface will be very useful. I could've setup a LAN interface without a router but I'm lazy and this was the path of least resistance with maximum reliability.

So If any of you want to hack me here is the diagram of the setup:
<img src="/assets/2021-11-06-a-peculiar-case-of-a-home-networking/diagram.png" style="display:block;margin-left:auto;margin-right:auto;">

I tested various different setups and it seems like this is the next best option compated to a physical cable. If you are not able to run a ethernet cable to somewhere it might be a good idea to use this 2 routers approach then. I hope this will help somebody!