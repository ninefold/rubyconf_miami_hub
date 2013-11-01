# Talks

Talks are pretty simple. They're markdown content with frontmatter metadata.

Frontmatter sits at the top of the page and looks like this:

```
---
type: talk
title: A Lightweight SOA Framework using Ruby, Apache Thrift and AMQP
speaker: Stephen Henrie
room: Salon 2
day: Saturday
session: 12:55 PM
---
```

The metadata used in talks is the following:

| field   | data                         |
| --------|------------------------------|
| type    | The type of page this is     |
| title   | The title of the talk        |
| speaker | The speaker                  |
| room    | The room that the talk is in |
| day     | The day the talk is on       |
| session | The time the talk is         |

All the talks have been pre-populated, but this metadata means that these fields are available as methods on the talk resource as well.
