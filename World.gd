extends Node2D

var planet
var Planet = load("res://Planet.tscn")
var tick = 0

func _unhandled_input(event):
	if event.is_action_pressed("reset"):
		for child in get_children():
			if child.name != "Camera2D":
				child.queue_free()
	if event is InputEventKey and event.scancode == KEY_SHIFT:
		if tick == 0:
			Planet = load("res://Planetator.tscn")
			tick = 1
		else:
			Planet = load("res://Planet.tscn")
			tick = 0
	if event is InputEventMouseButton and event.pressed and not event.is_echo() and event.button_index == BUTTON_LEFT:
		
		planet = Planet.instance()
		planet.position = get_global_mouse_position()
	if event is InputEventMouseButton and not event.pressed and not event.is_echo() and event.button_index == BUTTON_LEFT:
		planet.direction = get_global_mouse_position() - planet.global_position
		add_child(planet)
	if event is InputEventMouseButton and event.pressed and not event.is_echo() and event.button_index == BUTTON_RIGHT:
		var resource = load("res://Gravitor.tscn")
		var body = resource.instance()
		body.position = get_global_mouse_position()
		add_child(body)
	if event is InputEventMouseButton and event.pressed and not event.is_echo() and event.button_index == BUTTON_MIDDLE:
		var resource = load("res://Ungravitor.tscn")
		var body = resource.instance()
		body.position = get_global_mouse_position()
		add_child(body)
	if event is InputEventMouseButton and event.button_index == BUTTON_WHEEL_DOWN:
		#if Engine.time_scale > 0:
		Engine.time_scale -= 0.05
		get_node("Camera2D/Label").set_text("%s" % Engine.time_scale)
	if event is InputEventKey and event.scancode == KEY_E:
		get_node("Camera2D").scale -= Vector2(0.1,0.1)
		get_node("Camera2D").zoom -= Vector2(0.1,0.1)
	if event is InputEventMouseButton and event.button_index == BUTTON_WHEEL_UP:
		#if Engine.time_scale < 1:
		Engine.time_scale += 0.05
		get_node("Camera2D/Label").set_text("%s" % Engine.time_scale)
	if event is InputEventKey and event.scancode == KEY_Q:
		get_node("Camera2D").scale += Vector2(0.1,0.1)
		get_node("Camera2D").zoom += Vector2(0.1,0.1)

