extends Node2D

export var gravity = 10000
var follow_mouse = false

func _ready():
	$Area2D.gravity = gravity

func _process(delta):
	#set_position(get_global_mouse_position())
	if Input.is_mouse_button_pressed(BUTTON_LEFT) and Input.is_key_pressed(KEY_SHIFT):
		$Area2D.gravity = 1000
	elif Input.is_mouse_button_pressed(BUTTON_RIGHT) and Input.is_key_pressed(KEY_SHIFT):
		$Area2D.gravity = 10000
	else:
		$Area2D.gravity = gravity
	if Input.is_action_pressed("noG"):
		$Area2D.gravity = 0
	if follow_mouse:
		if Input.is_mouse_button_pressed(BUTTON_LEFT):
			follow_mouse = false
		else:
			set_position(get_global_mouse_position())



func _on_ColorRect_mouse_entered():
	if abs(Engine.time_scale) <= 0.2:
		follow_mouse = true
