---
type: talk
title: Your Development Machine in the Cloud
speaker: Charles Wood
room: Salon 2
day: Friday
session: 1:10 PM
---

## About the speaker

Charles Max Wood is the host of the Ruby Rogues, Javascript Jabber, Freelancers' Show, and iPhreaks podcasts. He enjoys programming in Ruby, Javascript, and Objective C. He lives in Utah with his wife, Heather, and their 4 children.

## Talk Abstract

Can you do your work anywhere? All you need is a laptop and internet, right? What if your laptop blows up? Can you work on your phone? ipad? When you reboot your computer, does it pick up where you left off?

What if your developer machine was just another machine in the cloud? Then all you need is a terminal and an internet connection. To get work done, all you do is connect remotely to your cloud machine.

What this allows you to do is: 
- Pick up where you left off (using tmux and SSH) 
- Work from any device that has a terminal or terminal emulator 
- Make your work available from anywhere with an internet connection. (Clients like this.) 
- Do only one setup (across multiple workstations). This makes replacing your machine easy. 
- Use your friend's machine without compromising any security on the project 
- Pair program using tmux in your normal working environment 
- Use a cheap VPS on an inexpensive laptop

Software/Packages/Services I'm using to make this work: 
- SSH 
- BASH 
- tmux 
- Emacs 
- Git 
- Apache/Passenger 
- DigitalOcean 
- Guard 
- Database software (PostgreSQL/MongoDB)

I've been using this setup for about a year and it has made things VERY painless for me. I've paired with clients and subcontractors with it and traveled and picked up work on devices you can't normally do development on.

It also makes demo's a freaking breeze.