extends Label

var COMPANY = "Veupix"
var SINCE_DATE = 2018
var BY_DATE = OS.get_date().year

func _init():
	if SINCE_DATE < BY_DATE:
		text = "© %s, %d - %d" % [ COMPANY, SINCE_DATE, BY_DATE ]
	else:
		text = "© %s, %d" % [ COMPANY, SINCE_DATE ]