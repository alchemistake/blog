---
layout: post
title: It turns out it is hard to remember 2 month old code
date: 2022-02-04 22:21 +0100
categories: log
tags: animation-gan
---
* premise of animation gan
  * 
* explain the time gap
* explain the plan of attack
* explain why you wasted a day on ready made code
    * multi dimensional vector
* explain retracing of the papers
* explain attributed paper required edits/update
    * explain why my setup lacks torch etc.
        * wsl cuda vs native cuda
          * [Last time I was trying to train anything,]({% post_url 2021-12-11-what-i-learned-this-week-2021-49 %}#tuesday) I tried to use WSL since I'm more familiar with Linux, it turns out it was a mistake. Long story short if you install a special driver it gives you CUDA powers on WSL but the catch is if you have a G-SYNC enabled monitor connected there are some glitches that causes horrible stuff like frame drops and intermittent green screen. Even if WSL is not up the problems continue. Rather than having system-wide problems I decided to switch to the windows' python. Thus i needed to re-download and install everything from driver to torch package.
* explain current breaking situation.