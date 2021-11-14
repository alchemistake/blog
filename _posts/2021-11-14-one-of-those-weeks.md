---
layout: post
title: One of those weeks
date: 2021-11-14 17:46 +0100
categories: home-server
tags: networking
---
I'm having one of those weeks. I was planning to finish my homeserver that has the parts sitting on the shelf and then wave of bad luck hit my project.

I had a small VLAN problem with my home server. My TV couldn't find my plex server. Also I have a Wake On LAN server to start my computer from long distance in case I want to do something like download a game in advance or start a backup. The problem was [the router setup I did last week]({% post_url 2021-11-06-a-peculiar-case-of-a-home-networking %}) was not sharing same LAN. So I wanted to setup a new networking with proper VLANs and dividing the network into purpose built VLANs like smart devices, server, home usage.

So that's where all started. I tested a lot of stuff they didn't work as I intended then I decided to revert the settings changes and just have single shared pool of IPs which would solve the problem but wouldn't give me granular access I wanted. No big deal, to be honest. Then fire nation attacked! Since both of the routers use OpenWRT they look identical. I accidentally installed the back up of the secondary router to the primary router which destroyed everything I worked. Plus, since configurations are drastically different the internet was gone for a while. Thankfully I had another router laying around at house so I quickly connected that while recovering the state of the both routers to work together. This whole failed operation took around 10 hours of my free time which de-railed my whole week.

So I couldn't finish other parts of the server, thus parts are still in my shelf and sitting until I dedicate more time to do them. I hope It does not turn in to one of these weeks.

To prevent this problem happening again I installed a theme to main router I own thus they look different, you can find [the sexy theme I used here](https://github.com/jerrykuku/luci-theme-argon).

<img src="https://raw.githubusercontent.com/jerrykuku/staff/master/argon2.gif" style="display:block;margin-left:auto;margin-right:auto;">

This derailed everything for this week, I didn't do the stuff I wanted to do but all is well. I learned a lot about OpenWRT, VLANs and networking.