extends Sprite

var sensivity = 50
var permanent = false
var use_up = true
var use_down = true
var use_left = true
var use_right = true

var stick_vector = Vector2() setget private_setter
var stick_speed = 0 setget private_setter
var stick_angle = 0 setget private_setter

var radius_ext = 0 setget private_setter
var radius_int = 0 setget private_setter
var is_pressed = false setget private_setter

func private_setter(val = null): pass

func _ready():
	if $"..".visible: permanent = true
	else: $"..".visible = permanent
	
	radius_ext = get_texture().get_size().x / 2
	radius_int = $Stick.get_texture().get_size().x / 2

func _input(event):
	if event is InputEventScreenTouch:
		is_pressed = event.is_pressed()
		if not is_pressed:
			hide(event)
	elif event is InputEventScreenDrag and is_pressed:
		if not $"..".visible and $"..".rect_position.distance_to(event.position) >= sensivity:
			show(event)
		else:
			move(event)

func show(event):
	$"..".rect_position = event.position
	$Stick.position = Vector2()
	
	$"../JoystickAnim".play('show')

func hide(event):
	if not permanent:
		$"../JoystickAnim".play('hide')
	
	stick_speed = 0
	stick_vector = Vector2()
	stick_angle = 0
	
	$Stick.position = Vector2()

func move(event):
	var next_pos = event.position
	
	if ( not use_up and next_pos.y < $"..".rect_position.y ) or ( not use_down and next_pos.y > $"..".rect_position.y ):
		next_pos.y = $"..".rect_position.y
	
	if ( not use_left and next_pos.x < $"..".rect_position.x ) or ( not use_right and next_pos.x > $"..".rect_position.x ):
		next_pos.x = $"..".rect_position.x
	
	stick_angle = next_pos.angle_to_point($"..".rect_position)
	
	stick_speed = $"..".rect_position.distance_to(next_pos)
	
	if stick_speed + radius_int > radius_ext:
		stick_speed = radius_ext - radius_int
	
	stick_vector = (next_pos - $"..".rect_position).normalized()
	
	$Stick.position = stick_vector * stick_speed