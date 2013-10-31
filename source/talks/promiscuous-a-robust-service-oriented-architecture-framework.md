---
type: talk
title: Promiscuous: A robust service-oriented architecture framework
speaker: Nicolas Viennot & Kareem Kouddous
room: Poinciana
day: Sunday
session: 2:45 PM
---

## About the speakers

Nicolas Viennot is a PhD candidate at Columbia University. He focuses his research on operating systems, distributed systems, databases and software reliability. He is an experienced Linux kernel developer that fell in love with Ruby three years ago. He is the maintainer of several open source projects, such as tmate.io, an instant terminal pairing tool.

Kareem Kouddous is a startup addict with over 13 years years of battle scars. He's currently the CTO and Founder at Crowdtap and he co-organizes the NYC Lean Startup Meetup. He's an active open source contributor believing firmly in paying it forward.

## Talk Abstract

For anyone who has built an application that’s larger than what a small team can build in a few months, the euphoria of working with frameworks like Rails or Sinatra is quickly lost to the pain of a sprawling disorganized code base, slow tests, and long ramp up time for new developers. Extracting Service Objects or abandoning MVC for something like MOVE only complicates the code base and fails to make things simpler. Moving to Javascript MVC helps extract a lot of view logic but you’re still left with a monolithic backend. The solution we propose is to split up your monolithic app into many smaller, easy to maintain, applications.

Splitting applications is challenging for numerous reasons. One of the biggest challenge is to keep all the applications’ data in sync. We introduce Promiscuous[1], an open source replication framework that facilitates data replication across applications in a safe and consistent manner. Unlike traditional approaches such as Stripe’s MoSQL[2] and LinkedIn’s Databus[3], which operate at the database level, Promiscuous transparently instruments the ActiveModel interface to replicate model operations by using Redis and RabbitMQ. This makes it a great solution for separation of concerns, heterogeneous database replication, and asynchronous triggers in the datacenter.

We’ll dive into the mechanics of Promiscuous and how we used it to split our monolithic application into eight small, single purpose applications. We will also show our findings in scalability, deployment, migration, unit/integration testing, and general architecture best practices laced with real world examples.

References 
[1] Promiscuous: http://github.com/crowdtap/promiscuous 
[2] MoSQL: https://github.com/stripe/mosql 
[3] Databus: https://github.com/linkedin/databus