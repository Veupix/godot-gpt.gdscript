extends OptionButton

func _ready():
	add_icon_item(preload("res://0_Global/Assets/Images/LocaleFlag_en_US.png"), "", 0)
	add_icon_item(preload("res://0_Global/Assets/Images/LocaleFlag_es_ES.png"), "", 1)
	add_icon_item(preload("res://0_Global/Assets/Images/LocaleFlag_ru_RU.png"), "", 2)
	
	if TranslationServer.get_locale() == "es_ES":
		select(1)
	elif TranslationServer.get_locale() == "ru_RU":
		select(2)
	else:
		select(0)

func _on_btnLang_item_selected(ID):
	if ID == 0:
		TranslationServer.set_locale("en_US")
	elif ID == 1:
		TranslationServer.set_locale("es_ES")
	elif ID == 2:
		TranslationServer.set_locale("ru_RU")