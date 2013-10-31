---
type: talk
title: New Ruby 2.1 Awesomeness: Fine-grained Object Allocation Tracing
speaker: Sam Rawlins
room: Salon 1
day: Saturday
session: 4:00 PM
---

## About the speaker

I've been programming Ruby for over 6 years now, first at IBM, writing command-line tools, then at the University of Arizona, writing support tools for IT development and operations teams, and now finally at Google for the Wildfire group, working on mature Rails applications. Last year I was awarded a grant by the Ruby Association to work on Mathematics gems that help the Ruby language progress into the realms of scientific research and high-performance computing. I'm very excited to see the Ruby community grow to the point where our applications are so powerful that performance and garbage-collection are among our primary concerns.

## Talk Abstract

Ruby 2.1 is coming out soon with an amazing new feature under ObjectSpace: #trace_object_allocations. We are now able to trace the file and line number (as well as method) where any Ruby object is allocated from. This is a very welcome feature, as object-level tracing has been very difficult in Ruby, especially since the memprof gem could not support Ruby past 1.8.x.

This new Ruby 2.1 feature is really just exposing some raw (and vast) data, so it can be difficult to tease out meaningful information. Two gems are introduced in this talk to solve just that problem. The objspace-stats gem allows us to view and summarize new object allocations in meaningful ways. We'll look at how to filter, group, and sort new object allocations. The second gem is rack-objspace-stats. We'll see how this tool can intercept requests to a Rack stack, and measure new object allocations taking place during the request. (For those familiar, this works very similar to the rack-perftools_profiler gem.)

We'll look at various examples of how this new Ruby 2.1 feature, and these tools can help an organization reduce unnecessary memory allocations, and speed up their code, especially mature Rack applications.