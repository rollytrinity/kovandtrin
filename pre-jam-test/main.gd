extends Node

@export var rotation_speed = 1.5

var rotation_direction = 0

func get_input():
	rotation_direction = Input.get_axis("tilt_left", "tilt_right")

func _physics_process(delta):
	get_input()
	$Wall.rotation += rotation_direction * rotation_speed * delta
