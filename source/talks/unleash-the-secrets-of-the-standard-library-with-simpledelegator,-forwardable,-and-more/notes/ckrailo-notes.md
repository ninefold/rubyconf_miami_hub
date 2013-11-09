---
author: Christopher Krailo (@ckrailo)[https://twitter.com/ckrailo]
---
### Overview
 - Lots of Ruby devs, even advanced devs, don't know large parts of the stdlib.
 - Ruby devs should go code diving into the stdlib to learn more.
 - Libraries explored in the talk: delegate, forwardable.
 - method_missing is a very powerful tool and makes it very easy to create a mess, so **write tests**.
 - 20% off coupon for his book, clean-ruby.com: RUBYCONF.
 - Other libraries to explore:
   - Net::HTTP
   - Tempfile
 - Other libraries that do similar things:
   - [saturnflyer/casting](https://github.com/saturnflyer/casting)
   - [myobie/rep](https://github.com/myobie/rep)
   - [stevenharman/dumb_delegator](https://github.com/stevenharman/dumb_delegator)
   - [elight/modest_presenter](https://github.com/elight/modest_presenter)

### delegate
 - Use this library instead of straight method_missing for presenters and decorators.
 - Sends unknown methods to the delegated object.
 - Won't let you accidentally wrap your delegator with the delegator.
 - Passes kernel methods (like `to_s`) through to the wrapped object by undefining those methods from the delegator object.
   - However, `.class` is not passed down in the stdlib delegator, but some other gems do.

### forwardable
 - Lets you get a user's address by calling `user.city` instead of `user.address.city`.
 - Gives you an easier way to define the forwarded method:
   - Instead of `def city; @address.city; end`
   - You write `forward :address, :city`
 - Use `Forwardable` for instance methods and `SingleForwardable` for class methods.
 - Example usage: wrap calls to services like Airbrake so they're easier to replace if Airbrake goes out of business.
