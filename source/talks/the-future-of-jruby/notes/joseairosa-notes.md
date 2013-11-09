---
author: José P. Airosa (@joseairosa)
---

- New version is going to be JRuby 9000 (yes seriously, it's over 9000!!!!)
- It will break a lot of things but it will also clean most of the crap from older versions
- It will only be compatible with Ruby 2.1
- Trying to improve collaboration with MRI development team
- Things to look for
  - Improved performance
  - Compile to Bytecode, letting the JVM do the work
  - Invokedynamic, Ruby as fast as Java (in theory)
- Truffle/Graal it's 5x6-x times faster than JRuby but it still only supports less than half of MRI
- IR (Internal Representation) is JRuby's next runtime
- Making a move to JRuby will save you money as well (if you use AWS for example) since it requires less memory for the same application in the MRI
- There are still stuff that is not thread safe
  - `@count += 1` is not thread safe
  - `@count ||= MyCache.new` is not thread safe
  - `hamster gem` is 100% thread safe
  - `atomic gem` 
  - Concurrency can work in Ruby, but you need to use the right tools for it
- `Rsense` is great for `vi` or `emacs` code completion
- `smart_diff` is great for enhanced code diff
- Ruby 2.1 added trace probes to MRI which will be used in JRuby 9k

### Conclusions

JRuby was, is and will continue to be an extremely powerful implementation of the Ruby language. It has proven that it can (and most of the times is) faster than the MRI and currently implements almost 100% of Ruby API.
