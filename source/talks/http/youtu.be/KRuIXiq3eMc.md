---
type: talk
title: How To Roll Your Own Ops Framework In Ruby (If You Really Have To)
speaker: Sandy Vanderbleek
day: Friday
room: Poinciana
video: KRuIXiq3eMc
session: 2:05 PM
video: http://youtu.be/KRuIXiq3eMc
---

## About the speaker

I do Ops for CardSpring in San Francisco, in my previous lives I have been a Frontend Engineer before earning my backend chops in Rails. Whatever I'm doing I know that testing matters and I always strive to make my tests as close to production as possible, whether that means making assertions in browsers or live on cloud hardware.

## Talk Abstract

There are currently a great crop of tools out that for doing Ops in Ruby, but when you need real certainty about your infrastructure for a specific provider the only way to test is through provisioning actual resources and making assertions about them. Currently the tools aren't quiete there.and you might be better off rapidly developing your own deployment framework with integration testing in mind. This talk will discuss what we've done at CardSpring to develop our own Ops as a Service and provide developers with a stress free deployment API using Ruby, Chef, and AWS and backed by full RSpec coverage.
