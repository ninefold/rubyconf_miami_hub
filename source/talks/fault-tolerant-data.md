---
type: talk
title: 'Fault Tolerant Data: Surviving the Zombie Apocalypse'
speaker: Casey Rosenthal
room: Salon 1
session: 1:10 PM
video: iEkeDp70jvo
day: Friday
---


## About the speaker

Casey Rosenthal is currently Director of Professional Services at Basho, where he installs and tests Riak clusters and provides training to clients so that they can do the same. As Chief Software Engineer for Port Forty Nine, Casey worked for NASA, Caltech, and JPL to engineer systems for storing and disseminating the image archives of space telescopes such as Hubble, Spitzer, Chandra, etc. He came in 4th place at the BotPrize 2K competition in Copenhagen for Discordia, a software bot written in Ruby that plays Unreal Tournament like a human based on a new artificial intelligence algorithm. He published a paper on that algorithm and spoke about it at GoRuCo '11. He created RubyGames, a learner-centered Ruby facilitation for groups, and ran it throughout user groups in New England in '09 and '10, and brought it to a warm reception at the New York Ruby Meetup in '11 where he was an Assistant Director for the user group. Casey was an Expert Panel Judge for the '09 RailsRumble and again in '12, and competed in the '10 RailsRumble. He won a seed grant from the Maine Institute of Technology to commercialize a discrete event simulation framework written in Ruby.

## Talk Abstract

Acute Zombielepsy has broken out, and the CDC has turned to you to store the first one million records of victims in the U.S. including the subject’s name, DNA sample, geo, etc. You must store this crucial data in a resilient manner in case one or more data centers are compromised by the outbreak. The CDC also needs to query the data in several ways; for example, they want to see the outbreak on a map to visualize geographic clusters. Naturally, you turn a fault-tolerant NoSQL database to store this data. But since you come from a relational background, you find it difficult at first to model the data properly for the types of queries that the CDC wants to run. Learn about advanced data modeling on a key-value database in Ruby -- distributed indexes, convergent data types, geohashes, and more -- on a truly fault tolerant database infrastructure. Keep calm; the fate of the human race depends on you.
