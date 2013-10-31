---
type: talk
title: The tricky truth about parallel execution and modern hardware
speaker: Dirkjan Bussink
room: Salon 2
day: Friday
session: 5:10 PM
---

## About the speaker

Dirkjan Bussink is an independent software developer from a city called Enschede in Netherlands. For the last years he's been a contributor to Rubinius, an implementation of Ruby.

These days EngineYard graciously sponsors his work on the project, allowing it to become an even better Ruby implementation.

## Talk Abstract

Concurrency and parallelism in Ruby are more and more important in the future. Machines will be multi-core and parallelization is often the way these days to speed things up.

At a hardware level, this parallel world is not always a nice and simple place to live. As Ruby implementations get faster and hardware more parallel, these details will matter for you as a Ruby developer too.

Want to know about the pitfalls are of double check locking? No idea what out of order execution means? How CPU cache effects can lead to obscure crashes? What this thing called a memory barrier is? How false sharing can cause performance issues?

Come listen if you want to know about nitty gritty details that can affect your Ruby application in the future.