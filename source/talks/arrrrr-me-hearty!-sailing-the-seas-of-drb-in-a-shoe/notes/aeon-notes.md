---
author: Anton Stroganov (@aeon)
---

- [@davystevenson](http://twitter.com/davystevenson), [@drbrain](http://twitter.com/drbrain) & [@reinh](http://twitter.com/reinh)
- https://github.com/davy/pirate_game

- Spaceteam (collaborative ios game) - the idea of the talk is to show how to reimplement it with ruby, DRb and shoes.

- DRb - easy distributed interprocess communication

- Rinda - flexible, automatic discovery, no need for explicit destination...
	- require 'rinda/tuple_space'
	- implementation of Linda for ruby
	- basically a shared kv store

- Shoes - simple gui toolkit, supports non-web ruby dev...
	- shoesrb.com
	- animations run in parallel... need to manually manage them for now...
	- separate drawing from animation steps

- shuttlecraft gem - makes it much easier to use rinda

- game architecture
	- registration
		- each of the player game instances writes its name and uri into the rinda tuplespace
		- game master can read the list of available players and address them from the tuple space
	- layout generation
		- game master sends list of all buttons and assigned buttons to each player directly over DRb
	- Action & response
		- game master watches for :action tuples... use take() which blocks and waits until a matching tuple is created in tuplespace
		- game instance watches for :button tuples, use take() to watch for button clicks
		- Rinda holds tuples like [:button, "Keel", timestamp, from]
		- on button click, :action tuple is written by the requesting game instance
	- game master knows how to generate master list of actions and track stats
	- game instance knows how to generate actions and manage the action responses

- DRb Security
	- drb gives you full access to remote machine... it focuses on ease of use and usability, so hopefully you trust all your clients
	- example: github.com/drbrain/drb-worm
	- there is message-level security, but...
		- while you can blacklist methods as dangerous, that's only as good as the assumption that you know all the possible dangerous methods so realistically it's not sufficient 
	- tainting
	- Access control list, 
	- deny or allow by ip address, but difficult to manage
	- no data privacy... communication in cleartext by default
	- DRb over SSL has privacy, but then you have to manage certs X509
	- can use chroot, but the process can still consume CPU and processes... 
		- can't use chroot with jruby though.
	- best practices:
		- verify your peers
		- limit accessibility
		- use private network
		- use unix socket if you don't need network

- drbdump, new gem for debugging drb interaction, similar to tcpdump...
