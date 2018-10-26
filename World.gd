extends Node2D


func _unhandled_input(event):
	if event is InputEventMouseButton and event.pressed and not event.is_echo() and event.button_index == BUTTON_LEFT:
		var resource = load("res://Planet.tscn")
		var gravitor = resource.instance()
		gravitor.position = get_global_mouse_position()
		add_child(gravitor)
	if event is InputEventMouseButton and event.pressed and not event.is_echo() and event.button_index == BUTTON_RIGHT:
		var resource = load("res://Body.tscn")
		var body = resource.instance()
		body.position = get_global_mouse_position()
		add_child(body)
