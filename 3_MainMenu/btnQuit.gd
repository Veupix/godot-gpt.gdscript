extends Button

func _ready():
	$Confirm.text = "Really want to quit game?"
	$Confirm.connect("confirmed", self, "_on_Confirm_confirmed")

func _on_btnQuit_pressed():
	$Confirm.popup_centered_minsize()

func _on_Confirm_confirmed():
	get_tree().change_scene("res://6_Ending/Ending.tscn")