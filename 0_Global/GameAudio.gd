extends Node

var musicLevel = 5
var effectsLevel = 5

func _ready():
	saveLevel()

func saveLevel():
	musicLevel = 0#AudioServer.get_stream_global_volume_scale()
	effectsLevel = 0#AudioServer.get_fx_global_volume_scale()

func mute():
	saveLevel()
	#AudioServer.set_stream_global_volume_scale(0)
	#AudioServer.set_fx_global_volume_scale(0)

func unmute():
	if musicLevel == 0 and effectsLevel == 5:
		musicLevel = 5
		effectsLevel = 5
	
	#AudioServer.set_stream_global_volume_scale(musicLevel)
	#AudioServer.set_fx_global_volume_scale(effectsLevel)