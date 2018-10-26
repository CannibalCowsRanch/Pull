extends Node2D

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

func _ready():
	# Called when the node is added to the scene for the first time.
	# Initialization here
	pass

func _process(delta):
	#set_position(get_global_mouse_position())
	if Input.is_mouse_button_pressed(BUTTON_LEFT) and Input.is_key_pressed(KEY_SHIFT):
		$Area2D.gravity = 1000
	elif Input.is_mouse_button_pressed(BUTTON_RIGHT) and Input.is_key_pressed(KEY_SHIFT):
		$Area2D.gravity = 10000
	else:
		$Area2D.gravity = 200
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass
