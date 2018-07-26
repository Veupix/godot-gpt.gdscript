extends Node

func _physics_process(delta):
	if Input.is_action_just_pressed("ui_skip_titles"):
		showMainMenu()

func showMainMenu():
	get_tree().change_scene("res://3_MainMenu/MainMenu.tscn")