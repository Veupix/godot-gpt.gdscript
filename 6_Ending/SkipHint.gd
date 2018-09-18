extends Label

func _physics_process(delta):
	if Input.is_action_just_pressed("ui_skip_titles"):
		$"../..".quit()