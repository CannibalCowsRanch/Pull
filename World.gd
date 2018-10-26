extends Node2D


func _unhandled_input(event):
	if event is InputEventMouseButton and event.pressed and not event.is_echo() and event.button_index == BUTTON_LEFT:
		var Planet = load("res://Planet.tscn")
		var planet = Planet.instance()
		planet.position = get_global_mouse_position()
		add_child(planet)
	if event is InputEventMouseButton and event.pressed and not event.is_echo() and event.button_index == BUTTON_RIGHT:
		var resource = load("res://Gravitor.tscn")
		var body = resource.instance()
		body.position = get_global_mouse_position()
		add_child(body)
