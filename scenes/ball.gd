extends RigidBody2D

signal enter

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_ball_entered(body: RigidBody2D):
	#piece of shit
	print("disabled?")
	get_node("CollisionPolygon2D").set_disabled(false)
	enter.emit()
