extends Area2D


# Called when the node enters the scene tree for the first time.
func _ready():
	connect("body_entered", on_body_entered)


func on_body_entered(body: RigidBody2D):
	$collectable/Sprite2D.disabled = false
	$collectable/Sprite2D.set_deferred("disabled", false)
	$collectable/CollisionShape2D.disabled = true
	$collectable/CollisionShape2D.set_deferred("disabled", true)
	print("Collect")
