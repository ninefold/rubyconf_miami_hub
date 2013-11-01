# Events

Events are even simpler than [talks](../talks/README.md). They use the same
frontmatter/markdown combination to allow easily updatable free-content with
structured metadata.

Frontmatter sits at the top of the page and looks like this:

```
---
type: event
title: Ruby On Sails
organizer: Jim Nanney
location: Biscayne Bay
day: Thursday
when: pre
sold_out: true
---
```

## Definitions

| field     | data                                                                                   |
|-----------|----------------------------------------------------------------------------------------|
| type      | The type of page (event)                                                               |
| title     | The name of the event                                                                  |
| organizer | The name of the organizer                                                              |
| location  | The broad location of the event                                                        |
| day       | The day of the event                                                                   |
| when      | `pre` or `post` depending on whether the event is before or afer the day's proceedings |


Events are not all there (we don't know about them all!) So feel free to add
your own event. Use the markdown section to add maps, pictures and whatever
else is useful to explain and promote your event.
