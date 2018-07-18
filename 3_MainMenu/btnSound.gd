extends TextureButton

func _on_btnSound_toggled(button_pressed):
	AudioServer.set_bus_mute(0, button_pressed)