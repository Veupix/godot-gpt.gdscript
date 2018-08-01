extends Button

func _ready():
	$Confirm.text = "You can loss your progress!\nReally want go to Main Menu?"
	$Confirm.connect("confirmed", self, "_on_Confirm_confirmed")

func _on_btnMainMenu_pressed():
	$Confirm.popup_centered_minsize()

func _on_Confirm_confirmed():
	get_tree().change_scene("res://3_MainMenu/MainMenu.tscn")