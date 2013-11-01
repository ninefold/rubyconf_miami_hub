#The Hub: The Digital Content Hub for RubyConf Miami

This is the code which builds the [RubyConf Miami Hub](http://rubyconf13.multifaceted.io). It's built using [middleman](http://middlemanapp.com) and is designed for easy contribution. If you're interested in how it works, check out the code which drives the extension.

## Installing

It should be pretty simple to get this going:

```
$ git clone https://github.com/ninefold/rubyconf_miami_hub
$ cd rubyconf_miami_hub
$ bundle install
$ middleman server
```

From there, go forth and edit. If you have livereload on your browser, then it should automatically refresh when you make changes.

## Structure

We've aimed to make it as easy to contribute to the hub as possible. For adding content it's simply a matter of adding a file in the right place, or editing one.

All of the content sits inside the `source/` directory.

### Talks
Talks live in the `source/talks` directory. They are free text which makes up the content above the talk preview on each of the talk pages. It's in Markdown format. Go ahead and edit as you see fit to make it better.

For more details, look at the [README for talks](talks/README.md)

### Events
Events live in the `source/events` directory. Just like talks, they're free text. Again, they're in Markdown, and there there to be added to and edited to make them better.

For more details, look at the [README](events/README.md).

<!--### Tips (Super Sekrit Feature)
Tips aren't fully implemented yet, but they live in `source/miami_tips`. They work much the same as talks and events.

There's a [README]() for tips, as well as an [issue]() surrounding their implementation. -->

## The Magic

The magic lives in the `lib/the_hub` directory. It's implemented as a Middleman extension. In short, what it does is look at the sitemap and add behaviour to different resources based on where they are in the path (thus a talk, which lives in `source/talks` has methods like `talk.speaker` and `talk.room`.)

To add another kind of resource, copy one of the modules like `TheHub::Talk`, replace the `SELECTOR` regex with one that will match the paths where you'll be keeping the files for your resource type.

### The Planner

The planner doesn't really hold much data of its own. It uses the metadata of the talks and events to populate its data. Check out the [Planner](lib/the_hub/planner.rb), [Day](lib/the_hub/day.rb), and [Session](lib/the_hub/session.rb) classes to understand it more fully.

### Frontmatter
Frontmatter is really what powers the hub. The metadata stored in front matter allows the planner to be built as it is and allows you to attach useful things to rendered content. Check out the READMEs for talks and events for more information about their frontmatter metadata.

## Contributing

If you want to contribute to the hub, then it's much like any other open source prodject:

1. Fork the project
2. Make your changes
3. Make a pull request

Easy, n'est-ce pas?

