extends Node2D


func _on_RigidBody2D_body_entered(body):
	print("Entered")
	if body.name == "RigidBody2D":
		$Cooldown.start()


func _on_RigidBody2D_body_exited(body):
	print("Exited")
	if body.name == "RigidBody2D":
		$Cooldown.stop()


func _on_Cooldown_timeout():
	if rand_range(0,10) < 5:
		self.queue_free()