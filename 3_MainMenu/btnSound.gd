extends TextureButton

func _on_btnSound_toggled(button_pressed):
	if button_pressed:
		AudioLevel.mute()
	else:
		AudioLevel.unmute()