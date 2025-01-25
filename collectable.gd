extends Area2D

var key: int

# Called when the node enters the scene tree for the first time.
func _ready():
	connect("body_entered", on_body_entered)


func on_body_entered(body: RigidBody2D):
	queue_free()
	print("Collect")
	key += 1
	print(key)
