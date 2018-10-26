extends Node2D

export var gravity = 10000;

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
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass
