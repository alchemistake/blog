---
layout: post
title: Time is a currency
date: 2022-02-19 13:47 +0100
categories: animation-transformer
tags: machine-learning code
---
I'm still sinking time on the initial step of my project "Nataraja" the Machine learning tool to generate 3D Animations on a specific set of geometries (for example, Mixamo Skeleton or any other generalized skeleton that I can train the thing on.)

The idea is simple, we download a bunch of animations online then use them to teach the computer rules of animation and it will spit out some animations. Most likely, they will not be in a usable state but they might speed up the creative process or even those corrections can be used to teach the system what they are doing wrong. But the implementation and testing is another story, which is very complex. I decided to use transformer structure since they make wonders in *N*atural *L*anguage *P*rocessing. It required some modification to that system to work on animation space. So recap is done.

I have been working on that correction since December of 2021 and I still don't have anything I can test or trust. Currently, I'm a caveman trying to understand the things happening. I'm well versed in the math of it but I'm still learning the libraries and how the Data Scientist folk codes. I was planning to use some 2D animation I generate procedurally and use it as the benchmark before committing to the 3D part but I'm still stuck at getting something working.

Since the last time I decided to make my own implementation, I believe I finished the conversion steps required but there is one major Achilles heel. The implementation I decided to convert was using sequence length and dimension size as equal variables and I'm having a very hard time unmixing those two from code. Sequence length is the number of actions or states that define the animation in my case. The dimension size is how many joints or angles the character would have. I think I can sink more days on it but I believe it will be a bad effort to do so.

Currently, I'm going back and forth about fixing my implementation and trying to edit an existing implementation, I found a research paper that fits my needs and provable has worked before. They published their code as [SpaceTimeformer](https://github.com/QData/spacetimeformer). I'm wasting a lot of time with indecisiveness and it started to hurt me. Unfortunately, 2022 is fast and we are almost at the end of February.

I believe I need to get someone with active data science background on board with the project to protect me from wasting time because of my noobness.