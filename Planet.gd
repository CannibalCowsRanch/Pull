extends Node2D
export var thrust = 2
var direction = Vector2(0,0)

func _ready():
	$RigidBody2D.apply_impulse(Vector2(0,0), direction)

func _unhandled_key_input(event):
	if event.is_action("left"):
		$RigidBody2D.apply_impulse(Vector2(0,0), Vector2(-thrust,0))
	if event.is_action("right"):
		$RigidBody2D.apply_impulse(Vector2(0,0), Vector2(thrust,0))
	if event.is_action("up"):
		$RigidBody2D.apply_impulse(Vector2(0,0), Vector2(0,-thrust))
	if event.is_action("down"):
		$RigidBody2D.apply_impulse(Vector2(0,0), Vector2(0,thrust))


func _on_RigidBody2D_body_entered(body):
	if body.name == "RigidBody2D" and $Cooldown.is_stopped():
		$Cooldown.start()

func _on_Cooldown_timeout():
	queue_free()

func _on_VisibilityNotifier2D_screen_exited():
	queue_free()
