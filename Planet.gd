extends Node2D
export var thrust = 2

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
	if body.name == "RigidBody2D":
		$Cooldown.start()


func _on_RigidBody2D_body_exited(body):
	if body.name == "RigidBody2D":
		$Cooldown.stop()


func _on_Cooldown_timeout():
	self.queue_free()