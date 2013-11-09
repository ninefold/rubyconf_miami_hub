---
author: José P. Airosa (@joseairosa)
---

- Developing games with Ruby
- There was demo showing that mine craft can in its essence be developed in Ruby
- Same basis apply, we still have a Game loop
- Loading and saving the game can and should be saved/loaded from files
- A game should have things like randomness, AI, etc
- For simple 2D games there's a cool gem called `gosh`
  - `Gosu::Window` manages the actual viewport
  - It also handles key pressing and mouse movement
  - Supports sound
  - Has built-in Math (some physics) already integrated
- Author developed another gem called `hasu`
  - Has better exception handling
  - Lets you define your initialisation on a reset method
- We saw a demo of the author creating a Pong game with `hash`
- Alerted to the fact that even tho it was using a TDD approach ti would let the app itself warn about undefined methods, etc
- We built Pong in 15 mins, which was pretty awesome
- `Gosu` has a ecosystem
  - `Metro`, `Gamebox` and `Chingu`
  - `Chipmunk` Is a physics library
  - `Releasy` Makes it easy to release
  - Also lets you go down to `OpenGL`
  - There's a nice community in the forums
- `Game Programming Patterns` is a really good book to get started into game development
- `Ludum Dare` is a competitions on Dec 14 and 15

### Conclusion

Developing games with Ruby is a fun adventure but probably still not something that you would quit your day job. Tapping into C library using Ruby makes it really easy to use things like OpenGL. It's an unfortunate truth :(