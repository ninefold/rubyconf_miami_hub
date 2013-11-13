---
author: Anton Stroganov (@aeon)
---

## ruby hangout

monthly ruby meetup over google hangout

## national software school 

the only non-profit software academy in the US

## influx db

new time series db, libs for js, ruby, python, etc... in beta now, production target january

## rapgenius - hyperlayers

- caching personalized content is difficult.
- generational caching - standard, uses item id + expiration... but not so good for personalized content
	- naive solution is adding everything that could affect the page content into the cache key
	- but that kinda sucks... 
	- dhh's solution - client-side customization, 
		- use javascript to manipulate the page to hide the stuff that user is not supposed to see it.
		- kinda sucks security wise.
	- wycat's solution - client-side templating
		- but now the client needs to know all kinds of things about application state
	- our solution - hyperlayers
		- first step, process erb and render everything to HTML _except_ for stuff that's user-specific...
		- cache the resulting erb, and render it on request - it's mostly html now, so processing it for just the user-specific stuff is pretty fast
		- all users use same cache key, so it's cheap

## dependencies testing with appraisal and bundler

[@sikachu](http://twitter.com/aeon)

- you publish a gem, you test it... but do you know if it will work with older versions of your dependencies?
- especially if your gem has been around for a while...
- just because it works with latest version, it doesn't mean it works with older versions :(
- use appraisal to figure it out
- sets up independent environment for each version you want to "appraise", and runs the tests in it.
- run rake appraisal:rails-3-1 test... and it just works. 
- you can set it up to run automatically with travis or any other CI probably
- thoughtbot using it to maintain paperclip and other gems

## Programming Programmers

[@schneems](http://twitter.com/schneems)

- how many of us have contributed to open source?
	- hands go up
- how about 2000+ commits? 
	- hands go down, 2 hands in the room stay up...
- use CodeTriage - helps you help open source...

## How to make perfume dance

[@nari3](http://twitter.com/nari3), Cruby committer, author

- Perfume is a pop group in Japan 
- perfume-dev.github.com - has motion capture of their performance...
- hmmm.... how to make them dance in ruby?
- SDL + bvh gem....
- dancing stick figures as first prototype...
- oh noes... had to disable GC to make it work... 
	- motion data is huge, creates tons of read-only objects after parsing... 
	- GC was stopping the world and scanning all the objects at each pass... 
	- so the dance animation stutters terribly
- ruby 2.1 to the rescue! 
	- introduces generational GC... which fixes the problem... 
	- the motion objects are not scanned by GC on every pass :)

## mentoring from a newbies perspective

[@allie_p](http://twitter.com/allie_p), Rails girls DC organizer, and a newbie

Tips for being an effective mentor:

- At the beginning, the mentee doesn't even know what questions to ask... 
	- Encourage them to ask questions continously
- Don't go down the rabbit hole... it's too confusing too fast... 
	- Keep it concise and give them a basic idea first.
- Understand if you're not understood
	- make it ok for the person to say "i don't get it"
- The answer to "what should I read"... 
	- don't dump a huge list, just give them one or two titles, and explain what to focus on
- Don't ever steal the keyboard... 
	- let the mentee do the work, dictate word by word if needed, but do not type it for them
- Help celebrate the small successes... 
	- motivate them to go on to the next thing

## graphs and hamsters

[@moonbeamlabs](http://twitter.com/moonbeamlabs)
- hamsters love food
- cave 1 -> tunnel -> cave 2
- the hamster wants to know how much grain and nuts it has
- but it can't remember the way back past two caves
- the hamster is a visitor... this is usually solved with traversal algorithms
- ArangoDB supports both documents and graphs, very space efficient.
- has REST api
- ruby gems: ashikawa core, guacamole

## minaswan 

josh [@crsexton](http://twitter.com/crsexton)

- matz is nice and so we are nice
- keep ruby awesome
- make ruby awesomer
- give back
- use semantic versioning
- good git commit messages
- namespaces
- clean api's...
- ruby is a social movement :)

## maintaining compatibility

[@sferik](http://twitter.com/sferik)

- explaining semantic versioning - see [semver.org](http://semver.org) 
- `stability = major version number / (time.now - Time.at(1.0.0.))`
- how often does this package break backwards compatibility?
- Use ~> instead of => in your Gemfile... makes sure you don't upgrade by a major version number by accident.
- ~> 1.2 is same as saying >= 1.2 && < 1.3

## PolyTexNic

Michael Hartl, [@mhartl](http://twitter.com/mhartl), author of Tau Manifesto and Rails Tutorial (awesome!).

- ebook typesetting tool for technical authors
- markdown, ruby, latex, math, figures, cross-references
- generates epub, mobi, pdf with simple build command
- https://www.softcover.io/


## state of ruby-lang.org

Shibata Hiroshi, root of ruby-lang.org

- github.com/ruby/www.ruby-lang.org is now hosted from github
- translations to a bunch of languages in six months, but need more contributors
- use SSL cert from globalsign - they provide free SSL certs for open source projects
- bugs.ruby-lang.org uses redmine
- forked redmine for ruby-lang
- docs.ruby-lang.org

## Rubyist magazine

Satoshi Gunji, [@gunjisatoshi](http://twitter.com/gunjisatoshi)

- magazine.rubyist.net
- 9 years old, but mostly in japanese...
- looking for submissions! Please send your writing!

## reveal-ck
- gem to generate slides in html
- just write haml, uses reveal-js for presentation

## updating library dependencies with Tachikoma

[@sanemat](http://twitter.com/sanemat)

- Tachikoma automates git pull, bundle update, git commit, pull request process to make updating the libraries painless

## unbelievable

[Michael Dvorkin](http://github.com/michaeldv/), author of awesome_print

- inspired by Yusuke Endoh
- demo: ruby program encoded as lorem text, todo list text, ....
- code can generate plaintext that encodes arbitrary ruby code... pretty crazy.


## health tools in ruby
- bit.ly/rubyconf-health
- medical community needs better tools... looking for contributors.

## learn improv for great good 

Diego, [@_sc](http://twitter.com/_sc)

improv can teach us useful social and team skills
- to care
- to relinquish control
- to ask for permission
- to accept 
- great for practicing empathy