extends CharacterBody2D

var state: String = "fight"
var can_attack: bool = false
var speed: int = 70
@export var patrol_type = "linear"
var delta: float
@onready var pathfollow = get_parent()

# Called when the node enters the scene tree for the first time.
func _ready():
	if can_attack:
		attack()
	if state == "patrol":
		patrol(delta)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func attack():
	pass

func patrol(delta: float):
	if patrol_type == "linear":
		pathfollow.offset += speed * delta
	else:
		pass

func _on_area_2d_body_entered(body: RigidBody2D) -> void:
	pass # Replace with function body.


func _on_area_2d_body_exited(body: RigidBody2D):
	can_attack = false
	state = "patrol"
	await $Timer.timeout
