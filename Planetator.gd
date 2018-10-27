extends Node2D

var direction = Vector2(0,0)
export var max_children = 4

func _ready():
	direction = get_local_mouse_position() - position

func _on_Timer_timeout():
	print(get_children())
	var Planet = load("res://Planet.tscn")
	var planet = Planet.instance()
	planet.direction = direction
	add_child(planet)
