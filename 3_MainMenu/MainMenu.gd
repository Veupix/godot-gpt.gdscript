extends Node

func show():
	$MainMenu.visible = false
	$MainMenuAnim.play("show")

func _ready():
	get_tree().paused = false