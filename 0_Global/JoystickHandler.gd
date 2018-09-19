extends Sprite

var RADIUS
var SMALL_RADIUS

var stick_pos
var evt_index = -1

var is_pressed = false


func _ready():
	RADIUS = get_texture().get_size().x / 2
	SMALL_RADIUS = $HandlerStick.get_texture().get_size().x / 2


func show(event):
	position = event.position
	stick_pos = position
	$HandlerStick.position = Vector2()
	$JoystickAnim.play('show')
	if stick_pos.distance_to(event.position) < RADIUS:
		evt_index = event.index

func hide(event):
	$JoystickAnim.play('hide')
	evt_index = -1
	$"..".stick_speed = 0
	$"..".stick_vector = Vector2()
	$"..".stick_angle = 0

func move(event):
	var dist = stick_pos.distance_to(event.position)
	if dist + SMALL_RADIUS > RADIUS: dist = RADIUS - SMALL_RADIUS
	var vect = (event.position - stick_pos).normalized()
	$"..".stick_speed = dist
	$"..".stick_vector = vect
	$"..".stick_angle = event.position.angle_to_point(stick_pos)
	$HandlerStick.position = vect * dist


func _input(event):
	if event is InputEventScreenTouch:
		is_pressed = event.is_pressed()
		if not is_pressed:
			hide(event)
	elif event is InputEventScreenDrag and is_pressed:
		if not visible and position.distance_to(event.position) >= $"..".stick_sensivity:
			show(event)
		elif evt_index != -1:
			move(event)