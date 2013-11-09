---
author: Conrad Irwin
---


Stephen gave an interesting overview of Service Oriented Architecture, and some of the terminology in the field (RPC = remote procedure call, AMQP = advanced message queueing system). He talked a little bit about what he's working on at SCEA (the internal tools division of Sony in America) and how seriece orientation is working for them.

By using an AMQP broker for communication between services, they get a secure, reliable and cross-langauge mechanism for remote procedure calls. It supports dynamically scaling in response to demand by monitoring CPU usage on different services and queue length. The AMQP broker also enables configuration-less communication, each service only needs to know how to talk to the broker, not how to find each service that it depends on.

He then went through a simple example of using Thrift's Interface definition language to generate ruby stubs for a distributed calculator service in Ruby. Using that example he demonstrated how to use multiple worker processes without changing the client code. While in this example all the code was in ruby, the use of Thrift allows you to easily communicate between different services written in different languages. Because the interface definition language generates the boilerplate code, this gives you a nice way to "call" a function in a different language, or even running on a different companies API, as though it were a local method.
