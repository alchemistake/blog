---
layout: post
title: What I learned this week? 2021#49
date: 2021-12-12 20:16 +0100
categories: productivity
tags: learning
---
# Monday
Mondays are currently days for adding automation and optimizations to my workflow. Since I can only dedicate around 3 hours for my work because of a full-time job, I decided to dedicate a day in a week to remove time wastes from those 3 hours.
## Node-RED
Node-RED is a block programming environment that enables you to do very high levels of automation. Essentially it is IFTTT on steroids. It has a learning curve but It does not require you to be a 10x Software Engineer. Thus you can program any automation using a little bit of elbow grease and blocks people already created.
### Why do I want to learn it?
I started this blog and have been writing stuff on it for around two months now. I think I'm ready to reel in the people. I think I can set up some automation to send tweets and send the posts to relevant subreddits. I believe If I can figure out Node-RED, I can create any type of automation to fit my needs. Like home automation or controlling my 3D printer.
### How much I learned
I decided to make an RSS listener that will send a tweet on my personal account whenever I post a blog message. It seems an easy enough task to achieve on a day. I started with installing Node-RED on my home server. I used [k8s at home](https://artifacthub.io/packages/helm/k8s-at-home/node-red) templates to install them swiftly. I had some troubles with the server, so it took a little bit longer than I expected.

I decided to start with the "How to read RSS" part of the question. There was not an out-of-the-box solution but installing a plugin was easy enough. Then I struggled with input-output systems of Node-RED. It was easy but I was confused. After figuring it out I didn't want to send spam tweets to my account. I decided to send myself emails to see whether everything works out or not. I installed another plugin. After setting up my email credentials, I realized a problem. There was no way of detecting new posts, It was sending emails for every post that exists when I deploy the automation. I ran out of time for that day, so I couldn't debug why. I disabled sending emails part and then added debug blocks for the next time I do a check-up.

# Tuesday
Tuesdays are currently learning machine learning days!
## Auto Encoder
> Autoencoder is an unsupervised artificial neural network that learns how to efficiently compress and encode data then learns how to reconstruct the data back from the reduced encoded representation to a representation that is as close to the original input as possible.
Autoencoder, by design, reduces data dimensions by learning how to ignore the noise in the data.<sup>[Source](https://towardsdatascience.com/auto-encoder-what-is-it-and-what-is-it-used-for-part-1-3e5c6f017726)</sup>

### Why do I want to learn it?  
I'm working on a tool that requires 2<sup>n</sup> Input sizes. I thought maybe I can use Autoencoders to compress the data to the form.
### How much I learned
I have a Windows machine with a GPU installed. I don't like Windows to develop stuff so I use something called WSL to have easy access and heavily integrated Linux virtual machine on top of Windows. This creates a problem with the GPU though. Windows and Linux have to have a special CUDA driver to share the GPU while running computation. I started by researching how can I install CUDA. It turns out it is only allowed on Windows 11 and Windows 10 Insiders Programme. For the uninitiated _Insiders_ is a hell hole you get stuck if you accidentally enable and everything is half broken and a half working all the time. It is a beta program but I don't want to join again since there is no way to revert back. The article saying that was so old, I thought maybe the mainstream Win10 release got the features needed. So I decided to install the drivers that say only work on Windows 10 Insiders and they worked.

So I used a very simple torch example code to train some autoencoders. I started by testing my assumptions. I believe if the size of the input is smaller than the compressed size then we should see 100% accuracy. Since you can just copy and paste the data to the compressed version. It worked with 100% Accuracy. Then I started testing with bigger data sizes. To test them rather than using an off-the-shelf dataset I decided to create randomized junk. When using totally random data accuracy fell to 80% then I started reading about it. The reason autoencoders can compress data is by learning the underlying structure of the data. If someone uses totally random data there will be no structure at all so 80% is not that bad. So I decided to continue with the experiments when I have the data set I want.

# Wednesday
## OpenWRT VLAN
Virtual Networks are basically an abstraction of the networks that enables you to divide your network into individual and isolated parts.
### Why do I want to learn it?
I want to make a robust home network.
### How much I learned
Not that much actually. I started by following the official OpenWRT wiki. Then I realized I'm on a newer version of OpenWRT than the wiki gives explanation and they are not simply compatible at all. I started with experimentation and achieve little. I realized the setup I have complicates it a lot and decided to stop and experiment on an easier setup when the wikis are updated.

TLDR: I learned that I don't know anything about OpenWRT yet. Played around.

## Longhorn
> Longhorn is a lightweight, reliable, and powerful distributed block storage system for Kubernetes.
> Longhorn implements distributed block storage using containers and microservices. Longhorn creates a dedicated storage controller for each block device volume and synchronously replicates the volume across multiple replicas stored on multiple nodes. The storage controller and replicas are themselves orchestrated using Kubernetes.<sup>[Source](https://longhorn.io/docs/1.2.2/)</sup>

### Why do I want to learn it?
I'm planning to add more nodes to my Kubernetes cluster which in turn means I will need a more robust storage solution. I decided to try out longhorn.
### How much I learned
I decided to follow some tutorials and installed them on my home server to test it out. From what I see it is a nice piece of software, but I feel like it does not fit the make-shift server structure I have. I suggest [watching this video to get a clear and thorough preview](https://www.youtube.com/watch?v=eKBBHc0t7bc).

# Thursday
## P3 Steel
> The P3Steel is a remix of Twelvepro's redesign of Josef Prusa's i3.
> Leonardo - the prototype P3Steel printer - was designed and built by Irobri in April 2013, after attending a local Maker show in Zaragoza, Spain.
> The main frame structure, built from laser-cut 3mm steel, is extremely strong and simple to assemble, and eliminates the need for several printed parts due to the use of steel parts instead of threaded rods for the "Y" subframe (as in the original Prusa i3 and many of its variants).<sup>[Source](https://reprap.org/wiki/P3Steel)</sup>


### Why do I want to learn it?
I bought a kit for P3 Steel back in 2018 for around 100$. The unbelievable price bit me in the arse multiple times after I realized the kit is half-built and lacks a lot of features. After buying and building Ender 3 V2, I decided to revive the P3 Steel Project since I believe It has a superior platform to Ender 3.
### How much I learned
I started with absorbing the information online to see and plan ahead what can I do to complete it. The main problem I have is cables are not long enough in many places. I decided to ignore it for this session since it involves buying something rather than building something. Other problems include Hotend being an old 2.85 mm standard that nobody uses anymore. After a little bit of tinkering, I realized this kit uses a clone E3D V5 hot end with many parts missing. [I decided to upgrade it using a DIY Guide I found online.](https://www.youtube.com/watch?v=UvICpdVONXM) I think this hidden gem is brilliant and shows how the hotends work brilliantly. After wasting 3 hours online shopping, I decided not to try that DIY guide. I decided to build it after learning a little bit more after building a clone of something that exists. I bought the parts for an E3D V6 hotend. It cost me around $10 because I was able to skip a lot of parts since I have some stuff lying around. I will create a high flow hotend for Ender 3 next, following the tutorial.

# Friday
Fridays are dedicated to my wife and gaming together. I didn't learn anything that except I love [It Takes Two](https://www.ea.com/en-gb/games/it-takes-two).

# Feedback!
Thank you for reading. Every quest worths less if you don't tell me how you feel about this content! If you want to chat about a improvement I can do you please let me know at blog@thrideas.com