extends Control

@export var zoomSpeed: float = 0.05
@export var miniZoom: float = 0.001
@export var maxZoom: float = 2.0
@export var dragSensitivity: float = 1.0
@onready var camera_2d = $Camera2D
@onready var toilet = $CanvasGroup/Toilet

func camera_transition(node, property, fin_val, duration):
	var tween = create_tween().set_ease(Tween.EASE_IN_OUT).set_trans(Tween.TRANS_LINEAR)
	tween.tween_property(node, property, fin_val, duration)
	
func _process(delta):
	camera_transition(camera_2d, "position", Vector2(592, 306), 4.0)
	$AnimationPlayer2.play("title_tilt")	

func _on_button_pressed() -> void:
	$Timer.start()
	$Timer2.start()
	$CanvasGroup/Toilet/AudioStreamPlayer2D.play()
	camera_transition(toilet, "position", Vector2(928,360), 0.1)
	await $Timer2.timeout
	$AnimationPlayer.play("fish_shake")
	await $Timer.timeout
	get_tree().change_scene_to_file('res://main.tscn')
