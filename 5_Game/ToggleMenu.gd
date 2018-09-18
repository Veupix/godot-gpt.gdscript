extends TouchScreenButton

func _physics_process(delta):
	if Input.is_action_just_pressed("ui_toggle_game_menu"):
		$"../../GameMenu".show()