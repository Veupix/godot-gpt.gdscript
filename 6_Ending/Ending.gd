extends Node

func _physics_process(delta):
	if Input.is_action_just_pressed("ui_close_opening"):
		quit()

func quit():
	get_tree().quit()