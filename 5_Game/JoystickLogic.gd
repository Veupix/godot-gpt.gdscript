extends Control

func _physics_process(delta):
	if $Joystick.stick_angle:
		$"../Player".rotation = $Joystick.stick_angle
	
	$"../Player".position += $Joystick.stick_vector * $Joystick.stick_speed * 2 * delta