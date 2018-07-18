extends OptionButton

var langs = ["English", "Spanish", "Russian"]

func _ready():
	add_icon_item(preload("res://0_Global/Assets/Images/US.png"), "", 0)
	add_icon_item(preload("res://0_Global/Assets/Images/ES.png"), "", 1)
	add_icon_item(preload("res://0_Global/Assets/Images/RU.png"), "", 2)

func _on_btnLang_item_selected(ID):
	pass # replace with function body