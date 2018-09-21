extends Sprite

var sensivity = 50
var use_up = true
var use_down = true
var use_left = true
var use_right = true

var stick_vector = Vector2()
var stick_speed = 0
var stick_angle = 0

var _radius_ext = 0
var _radius_int = 0
var _is_pressed = false

func _ready():
	_radius_ext = get_texture().get_size().x / 2
	_radius_int = $Stick.get_texture().get_size().x / 2

func _input(event):
	if event is InputEventScreenTouch:
		_is_pressed = event.is_pressed()
		if not _is_pressed:
			hide(event)
	elif event is InputEventScreenDrag and _is_pressed:
		if not visible and position.distance_to(event.position) >= sensivity:
			show(event)
		elif position.distance_to(event.position) < _radius_ext:
			move(event)

func show(event):
	position = event.position
	$Stick.position = Vector2()
	
	$"../JoystickAnim".play('show')

func hide(event):
	$"../JoystickAnim".play('hide')

	stick_speed = 0
	stick_vector = Vector2()
	stick_angle = 0

func move(event):
	var next_pos = event.position
	
	var dist = position.distance_to(next_pos)
	
	if dist + _radius_int > _radius_ext:
		dist = _radius_ext - _radius_int
	
	if ( not use_up and next_pos.y < position.y ) or ( not use_down and next_pos.y > position.y ):
		next_pos.y = position.y
	
	if ( not use_left and next_pos.x < position.x ) or ( not use_right and next_pos.x > position.x ):
		next_pos.x = position.x
	
	var vect = (next_pos - position).normalized()
	
	stick_speed = dist
	stick_vector = vect
	stick_angle = next_pos.angle_to_point(position)
	
	$Stick.position = vect * dist