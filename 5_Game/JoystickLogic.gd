extends Control

func _physics_process(delta):
	$Joystick.stick_angle = 123
	
	if $Joystick.stick_angle:
		$"../Player".rotation = $Joystick.stick_angle
	
	$"../Player".position += $Joystick.stick_vector * $Joystick.stick_speed * 2 * delta