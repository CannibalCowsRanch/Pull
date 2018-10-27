extends RigidBody2D

func _integrate_forces(state):
	if state.get_total_gravity() == Vector2(0,0) and get_parent().get_node("Cooldown2").is_stopped():
		get_parent().get_node("Cooldown2").start()
	if state.get_total_gravity() != Vector2(0,0)and not get_parent().get_node("Cooldown2").is_stopped():
		get_parent().get_node("Cooldown2").stop()
