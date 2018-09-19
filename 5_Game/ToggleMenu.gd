extends TouchScreenButton

func _physics_process(delta):
	if Input.is_action_just_pressed("ui_toggle_game_menu"):
		$"../GameMenu".show()
	
	# Joystick Logic
	
	if $Joystick.stick_angle:
		rotation = $Joystick.stick_angle
	
	position += $Joystick.stick_vector * $Joystick.stick_speed * 2 * delta