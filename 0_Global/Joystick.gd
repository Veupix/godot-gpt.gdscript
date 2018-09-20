extends Sprite

var stick_speed = 0
var stick_angle = 0
var stick_vector = Vector2()
var stick_sensivity = 50

var RADIUS
var SMALL_RADIUS

var stick_pos
var evt_index = -1

var is_pressed = false


func _ready():
	RADIUS = get_texture().get_size().x / 2
	SMALL_RADIUS = $Stick.get_texture().get_size().x / 2

func _input(event):
	if event is InputEventScreenTouch:
		is_pressed = event.is_pressed()
		if not is_pressed:
			hide(event)
	elif event is InputEventScreenDrag and is_pressed:
		if not visible and position.distance_to(event.position) >= stick_sensivity:
			show(event)
		elif evt_index != -1:
			move(event)


func show(event):
	position = event.position
	stick_pos = position
	$Stick.position = Vector2()
	
	$"../JoystickAnim".play('show')
	
	if stick_pos.distance_to(event.position) < RADIUS:
		evt_index = event.index

func hide(event):
	$"../JoystickAnim".play('hide')
	
	evt_index = -1
	stick_speed = 0
	stick_vector = Vector2()
	stick_angle = 0

func move(event):
	var dist = stick_pos.distance_to(event.position)
	
	if dist + SMALL_RADIUS > RADIUS:
		dist = RADIUS - SMALL_RADIUS
	
	var vect = (event.position - stick_pos).normalized()
	
	stick_speed = dist
	stick_vector = vect
	stick_angle = event.position.angle_to_point(stick_pos)
	$Stick.position = vect * dist