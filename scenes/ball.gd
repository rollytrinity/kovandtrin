extends RigidBody2D

signal enter

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


#staticbody for area instead?
func _on_area_2d_area_entered(area: Area2D):
	print("colliding?")
	$AnimatedSprite2D.play("bounce")
