extends TextureButton

func _on_btnMute_toggled(button_pressed):
	AudioServer.set_bus_mute(0, button_pressed)