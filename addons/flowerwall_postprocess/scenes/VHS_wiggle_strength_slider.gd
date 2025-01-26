extends HSlider
@export var mytext:Label

func _ready() -> void:
	connect("value_changed", flowerwall_pp_autoload._on_vhs_wiggle_strength_changed)
	connect("value_changed", _on_value_changed)
	value = flowerwall_pp_autoload.crt_shader.get("shader_parameter/wiggle")
	mytext.text = str(value)
	
func _on_value_changed(a: float) -> void:
	mytext.text = str(a)
