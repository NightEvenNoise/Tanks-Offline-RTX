extends Node

var fullscreen = false

func _process(delta):
	if Input.is_action_just_pressed("fullscreen"):
		fullscreen = not fullscreen
		OS.window_fullscreen = true
	if Input.is_action_just_pressed("fullscreen") && not fullscreen:
		OS.window_fullscreen = false
