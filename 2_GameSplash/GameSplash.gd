extends Control

func show():
	$GameSplash.visible = false
	$GameSplashAnim.play("show")