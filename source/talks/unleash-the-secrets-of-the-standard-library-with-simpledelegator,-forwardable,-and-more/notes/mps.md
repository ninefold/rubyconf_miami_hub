---
author: Michael Pelz-Sherman
---

This talk was aimed at beginner/intermediate developers, but many experienced debs don’t know about these libraries either. (I didn't!)

- what is the ruby “standard library” ??
	- inside the core ruby source code (which is mostly C), there is a “lib” folder, with plain ruby code. Jim encouraged us to look at it.

## delegation

This "just works" with no external gems:

```ruby
require ‘delegate’
```

Delegation example: user.born may return a Date object, but we just want the year they were born.

DON’T change the “born” method; use a delegate (or Decorator) instead.

A Delegator class sends any “missing” messages to the Delegator object. e.g.:

	UserDecorator < Delegator
	decorated_user = UserDecorator.new(user)

override ```==``` so ```decorated_user == user``` returns true

SimpleDelegator is a generic Delegator implementation.

__setobj__ and __getobj__ classes are poorly named; can alias them to meaningful names

Problem of handling ActiveModel & class names; talked about draper gem & how it handles this issue.

Showed some tricks for dynamically aliasing methods via a “Decoratificationizer” class.

## forwarding

user.city -> Miami

city should forward to user.address

The Forward module adds the “forward(to, method_name, alt=method_name)”
	- some metaprogramming here!
	- doesn’t use method_mising, so it’s faster

std lib uses the regrettably-named “def_delegator” method

also supports a plural version, “def_delegators”, e.g. 

delegate [:city, :number, :postal_code] =? :@address

ActiveSupport adds:

allow_nil = avoids exceptions for calling method on nil, just returns nil
prefix

Forwarding is good for building Facades

lots of other devs on github have build extensions on top of the std lib

### feedback

This talk moved a bit too fast for me, and got a bit off track at times. I think it would have been more effective to show some complete code examples using just the standard library, rather than showing how to work around its deficiencies. It would have been nice to show some clear examples of when to use delegation vs. forwarding. But the basic message was great; there's a lot of very useful stuff in the standard Ruby library that can be used "out of the box", and the source code is enlightening to look at.


