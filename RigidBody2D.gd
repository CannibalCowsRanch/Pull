extends RigidBody2D

func _integrate_forces(state):
	print(state.get_total_gravity())
	set_applied_force(state.get_total_gravity())
