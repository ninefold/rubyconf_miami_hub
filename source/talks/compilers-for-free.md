---
type: talk
title: Compilers For Free
speaker: Tom Stuart
room: Salon 1
day: Saturday
session: 10:55 AM
---

## About the speaker

Tom is a computer scientist and Ruby programmer. He has lectured on optimizing compilers at the University of Cambridge, co-organizes the Ruby Manor conference, and is a member of the London Ruby User Group. His new book, Understanding Computation, was published by O’Reilly in May.

## Talk Abstract

Partial evaluation is a powerful tool for timeshifting some aspects of a program's execution from the future into the present. Among other things, it gives us an automatic way to turn a general, abstract program into a faster, more specialized one.

This math-free talk uses Ruby to explain how partial evaluation works, how it can be used to make programs go faster, and how it compares to ideas like currying and partial application from the world of functional programming. It then investigates what happens when you run a partial evaluator on itself, and reveals some surprising results about how these techniques can be used to automatically generate compilers instead of writing them from scratch.