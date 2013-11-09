---
author: Michael Pelz-Sherman (@mpelzsherman)
---
# Notes

This talk was aimed at beginner/intermediate developers, but many experienced debs don’t know about these libraries either. (I didn't!)

what is the ruby “standard library” ??
	- inside the core ruby source code (which is mostly C), there is a “lib” folder, with plain ruby code. Jim encouraged us to look at it - specially the classes related to delegation and forwarding.

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
