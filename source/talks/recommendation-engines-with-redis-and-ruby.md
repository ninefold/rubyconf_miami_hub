---
type: talk
title: Recommendation Engines with Redis and Ruby
speaker: Evan Light
room: Salon 2
day: Friday
session: 2:05 PM
---

## About the speaker

When not polishing his bio for conferences, Evan works as a freelance consultant and developer tutor working remotely from the cradle of culture and beacon of brilliance that is Ocean City, MD. He also organizes, if it can be called organized, the annual Ruby DCamp unconference that has never, in fact, been run within the borders of Washington, D.C.

## Talk Abstract

A recent client asked me to build a recommendation engine for them. Coming into this with a basic knowledge of statistical math, we ultimately built a relatively simple recommendation engine in Ruby. The design makes heavy use of Redis Sets, Lists, and Hashes in order to greatly reduce the number of SQL queries to provide recommendations.

This talk will be a case study of sorts discussing object-oriented techniques in building a scalable service as well as how we leveraged Redis to both simplify and expedite some of the operations that would have otherwise brought the service to a crawl.