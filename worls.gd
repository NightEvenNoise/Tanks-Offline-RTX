extends Spatial

func _process(delta):
	if Input.is_action_pressed("ui_cancel"):
		get_tree().change_scene("res://Menu.tscn")
