extends HSlider
@export var mytext:Label

func _ready() -> void:
	connect("value_changed", flowerwall_pp_autoload._on_bloom_intensity_changed)
	connect("value_changed", _on_value_changed)
	value = flowerwall_pp_autoload.bloom_shader.get("shader_parameter/bloom_intensity")
	mytext.text = str(value)

func _on_value_changed(a: float) -> void:
	mytext.text = str(a)
