extends Camera2D

@export var zoomSpeed: float = 0.05
@export var miniZoom: float = 0.001
@export var maxZoom: float = 2.0
@export var dragSensitivity: float = 1.0
@onready var camera_2d = $Camera2D

func camera_transition(node, property, fin_val, duration):
	var tween = create_tween().set_ease(Tween.EASE_IN_OUT).set_trans(Tween.TRANS_LINEAR)
	tween.tween_property(node, property, fin_val, duration)
	
func _process(delta):
	camera_transition(camera_2d, "position", Vector2(584, 304), 4.0)
