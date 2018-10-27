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
* `Mouse wheel`: change time scale
* `Left Mouse Button`: Add a "Planet" or a "Planetor"
* `Right Mouse Button`: Add a "Gravitor"
* `Middle Mouse Button`: Add an "Ungravitor"
* `Space Bar`: Delete every object

NB: if time scale is less than 0.2, hovering over a Gravitor 
will make it follow the mouse, clicking with the left button will make it stay in position

![Run](run.gif)
