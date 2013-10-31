---
type: talk
title: Visualizing Garbage Collection in Rubinius, JRuby and Ruby 2.0
speaker: Pat Shaughnessy
room: Poinciana
day: Saturday
session: 2:45 PM
---

## About the speaker

Pat Shaughnessy is a Ruby developer working at McKinsey & Co., a global management consulting firm. Author of Ruby Under a Microscope, Pat loves diving into the details of a technology, learning how it works, and then explaining it in simple terms that everyone can understand. Pat's blog articles and conference presentations have been featured multiple times on the Ruby Weekly newsletter, the Ruby5 podcast and the Ruby Show.

## Talk Abstract

In this talk we’ll dive into Ruby internals and take a close look at an ugly topic: garbage collection. How do these Ruby VM’s allocate memory for new objects? How do they identify unused objects? How do they reclaim memory from garbage objects, allowing it to be used again?

You can learn a lot about someone from their garbage. Using a series of diagrams, we’ll visually compare and contrast the complex algorithms these very different Ruby implementations use. What computer science research is behind each garbage collector? We’ll also look at the GC changes planned for the upcoming Ruby 2.1 release.