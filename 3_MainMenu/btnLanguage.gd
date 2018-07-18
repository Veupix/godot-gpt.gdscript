extends OptionButton

var langs = ["English", "Russian"]

func _ready():
	$".."/btnLanguage.add_icon_item(preload("res://3_MainMenu/Assets/Images/US.png"), "", 0)
	$".."/btnLanguage.add_icon_item(preload("res://3_MainMenu/Assets/Images/RU.png"), "", 1)

func _on_btnLanguage_item_selected(ID):
	pass # replace with function body