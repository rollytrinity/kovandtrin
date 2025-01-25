extends Node

@export var rotation_speed = 1.5

var rotation_direction = 0

func get_input():
	rotation_direction = Input.get_axis("tilt_left", "tilt_right")

func _physics_process(delta):
	get_input()
	$Wall.rotation += rotation_direction * rotation_speed * delta

func _on_body_entered(body: RigidBody2D):
	$Wall/wallcoll.disabled = true
	print("disabled?")
	get_node("CollisionPolygon2D").disabled = false
