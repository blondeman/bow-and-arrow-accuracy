extends Node3D

@export var arrow: PackedScene
@export var max_velocity: float = 10


func shoot(velocity: float):
	var arrow_instance := arrow.instantiate() as RigidBody3D
	get_tree().root.add_child(arrow_instance)
	arrow_instance.global_transform = global_transform
	arrow_instance.linear_velocity = -global_transform.basis.z * velocity


func _on_string_pull(distance: float) -> void:
	pass


func _on_string_release(power: float) -> void:
	shoot(power * max_velocity)
