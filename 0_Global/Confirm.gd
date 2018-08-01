extends PopupPanel

var text setget set_text

signal confirmed
signal canceled

func set_text(text):
	$ElementsC/ElementsM/ElementsV/Question.text = text

func _on_Cancel_pressed():
	hide()
	emit_signal("canceled")

func _on_Ok_pressed():
	hide()
	emit_signal("confirmed")