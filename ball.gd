extends CharacterBody2D

func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float):
	if is_on_floor():
		$AnimatedSprite2D.play("bounce")
