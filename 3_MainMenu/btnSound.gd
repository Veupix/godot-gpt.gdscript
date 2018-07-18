extends TextureButton

func _on_btnSound_toggled(button_pressed):
	if button_pressed:
		GameAudio.mute()
	else:
		GameAudio.unmute()