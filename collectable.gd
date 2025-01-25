extends Area2D


# Called when the node enters the scene tree for the first time.
func _ready():
	connect("body_entered", on_body_entered)


func on_body_entered(body: RigidBody2D):
	
	if not body.is_in_group("player"):
		print("pass")
		pass
		
	print("Collect")
