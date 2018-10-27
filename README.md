# Pull - a gravitational journey
Idea for a game with gravity based mechanics.
The code its just a dirty implementation, but you get the idea.

Entities:
* `Gravitor`: Gravity area
* `Planet`: Rigidbody with Gravitor
* `Planetor`: Planets generator
* `Ungravitor`: No gravity area

Commands:
* `q` and `w`: zoom
* `w`, `a`, `s`, `d`: apply impulse to all Planets
* `Shift`: Toggle between "Planet" and "Planetor" resource
* `Left Mouse Button`: Add a "Planet" or a "Planetor"
* `Right Mouse Button`: Add a "Gravitor"
* `Middle Mouse Button`: Add an "Ungravitor"
* `Space Bar`: Delete every object
