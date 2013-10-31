---
type: talk
title: Advanced Concurrent Programming in Ruby
speaker: Jerry D'Antonio
room: Salon 1
day: Saturday
session: 12:55 PM
---

## About the speaker

Jerry has been a professional programmer for almost two decades. He's also a husband, educator, Navy veteran, libertarian, contrarian, gamer, metal-head, vim enthusiast, and MMA fan. Jerry has worked professionally with numerous languages and has built software for industries as diverse as health care, education, banking, public broadcasting, civic engagement, and telecommunications. His current languages of choice are Ruby, Erlang, and R. Jerry lives and works in Akron, Ohio where he is the tech lead for the new product team at VHT (http://www.virtualhold.com/).

## Talk Abstract

Rumor has it that you can't write concurrent programs in Ruby. People once believed that the world was flat and we all know how that turned out. Between the native threads introduced in MRI 1.9 and the JVM threading available to JRuby, Ruby is now a valid platform for concurrent applications. What we've been missing--until now--are the advanced concurrency tools available to other languages like Clojure, Scala, Erlang, and Go. In this session we'll talk about the specific challenges faced when writing concurrent applications; we'll explore modern concurrency techniques such as agents, futures, promises, reactors, and supervisors; and we'll use various open source tools to craft safe, reliable, and efficient concurrent code. We'll write most of our code using the Concurrent Ruby gem but we'll also explore EventMachine and Celluloid.