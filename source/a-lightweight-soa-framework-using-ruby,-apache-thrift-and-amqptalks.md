---
type: talk
title: A Lightweight SOA Framework using Ruby, Apache Thrift and AMQP
speaker: Stephen Henrie
room: Salon 2
day: Saturday
session: 12:55 PM
Video: http://youtu.be/HTVoQ6_iVuc
---

## About the speaker

Stephen Henrie has been professionally working in the field of Software Engineering for over twenty-five years. He is currently a Manager of Software Engineering at Sony Playstation helping to host the online functionality for many of the games. He previously worked for places such as Scripps Institute of Oceanography, Leadfusion, Inc, a technology provider for the financial industry, Arizona State University and Bell Laboratories way back in the day. Stephen holds a BS in Electronic Engineering Technology from Southern Illinois University and an MS in Electrical Engineering and Computer Science from the University of Illinois-Chicago.

## Talk Abstract

Service-oriented architecture (SOA) is an evolution of distributed computing based upon the request/response design pattern (aka RPC) for communication between independent system components. These components modularize system functionality and encapsulate their business logic that is presented as Services to be consumed by client applications or other services.

The key to these Services is their loosely coupled nature; i.e., the service interface is independent of the implementation and developers can build applications by composing one or more services without knowing the services' underlying implementations. The use of messaging to connect distributed Service components provides a consistent communication platform to ensure a scalable, decoupled and reliable system that can grow over time with minimal impact on an existing system.

This talk will demonstrate one approach to implementing just such a system; focusing on a Ruby implementation of Service functionality and a lightweight RPC framework based on the Apache Thrift protocol specification and AMQP for messaging transport.

We’ll show just how easy it can be to build such a complex and highly distributed SOA system using Ruby and a couple of other open source projects.
