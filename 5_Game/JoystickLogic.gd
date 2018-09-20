extends CanvasLayer

func _physics_process(delta):
	if $Joystick.stick_angle:
		$"..".rotation = $Joystick.stick_angle
	
	$"..".position += $Joystick.stick_vector * $Joystick.stick_speed * 2 * delta