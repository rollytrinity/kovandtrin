extends StaticBody2D


func _on_visible_on_screen_enabler_2d_screen_entered():
	$wall/wallcoll.disabled = true    # disable
	print("disabled?")
	$tunnel/CollisionPolygon2D.disabled = false   # enable
