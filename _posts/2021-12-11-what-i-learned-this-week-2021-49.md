---
layout: post
title: What I learned this week? 2021#49
date: 2021-12-11 20:16 +0100
---
# Monday
Mondays are currently days for adding automation and optimizations to my workflow. Since I can only dedicate around 3 hours for my work because of a full-time job, I decided to dedicate a day in a week to remove time wastes from those 3 hours.
## Node-RED
Node-RED is a block programming environment that enables you to do very high levels of automation. Essentially it is IFTTT on steroids. It has a learning curve but It does not require you to be 10x Software Engineer. Thus you can program any automation using little bit of elbow grease and blocks people already created.
### Why do I want to learn it?
I started this blog and have been writing stuff on it for around two months now. I think I'm ready to reel in the people. I think I can set up some automation to send tweets and send the posts to relevant subreddits. I believe If I can figure out Node-RED, I can create any type of automation to fit my needs. Like home automation or control my 3D printer.
### How much I learned
I decided to make RSS listener that will send a tweet on my personal account whenever I post a blog message. It seems easy enough task to achieve on a day. I started with installing Node-RED to my home server. I used [k8s at home](https://artifacthub.io/packages/helm/k8s-at-home/node-red) templates to install them swiftly. I had some troubles with the server, so it took a little bit longer than I expected.

I decided to start with "How to read RSS" part of the question. There was not a out of the box solution but installing a plugin was easy enough. Then I struggled with input output systems of Node-RED. It was easy but I was confused. After figuring it out I didn't want to send spam tweets to my account. I decided to send myself emails to see whether everything works out or not. I installed another plugin. After setting up my email credentials, I realized a problem. There was no way of detecting new posts, It was sending emails for every post that exists when I deploy the automation. I ran out of the time for that day, so I couldn't debug why. I disabled sending emails part and then added debug blocks for the next time I do check up.
# Tuesday
Tuesdays are currently learning machine learning day!
## Auto Encoder
> Autoencoder is an unsupervised artificial neural network that learns how to efficiently compress and encode data then learns how to reconstruct the data back from the reduced encoded representation to a representation that is as close to the original input as possible.
Autoencoder, by design, reduces data dimensions by learning how to ignore the noise in the data.<sup>[Source](https://towardsdatascience.com/auto-encoder-what-is-it-and-what-is-it-used-for-part-1-3e5c6f017726)</sup>

### Why do I want to learn it?  
Transformer needs 2^n
### How much I learned
Cuda driver
I trained multiple versions it works but I learned random data does not make a good fit for autoencoder
# Wedneday
## OpenWRT VLAN
### What is VLAN
Virtual Networks
### Why do I want to learn it?
I want to make robust home network
### How much I learned
Not that much, documentations are not matching with the OpenWRT 21
## Longhorn
### What is Longhorn
kubernetes data thing.
### Why do I want to learn it?
I'm gonna expand my kubernetes cluster it needs decenteralized data storage
### How much I learned
Not much but i got it working
# Thursday
?? How can i frame this maybe focus on the hotend.
## P3 Steel
### What is P3 Steel
Unkown mark3 clone.
### Why do I want to learn it?

### How much I learned
# Feedback!
Thank you for reading. Every quest worths less if you don't tell me how you feel about this content! If you want to chat about a improvement I can do you please let me know at blog@thrideas.com