extends KinematicBody

const VEL_SPEED = 4
const ROT_SPEED = 0.008
const GR_SPEED = 0.8

var vel = Vector3()

func _physics_process(delta):
	var dir = Vector3()
	var rot = 0

	if Input.is_action_pressed('ui_right'):
		rot = -1
	elif Input.is_action_pressed('ui_left'):
		rot = 1
	if Input.is_action_pressed('ui_up'):
		dir.z = 1
	elif Input.is_action_pressed('ui_down'):
		dir.z = -1

	if rot:
		rotate_y(rot * ROT_SPEED)

	if dir:
		dir = dir.rotated(Vector3.UP, rotation.y) * VEL_SPEED

	vel.z = dir.z
	vel.x = dir.x

	if !is_on_floor():
		vel.y -= GR_SPEED

	vel = move_and_slide(vel, Vector3.UP)
