extends RichTextLabel

var ms = 0
var m = 0
var s = 0

func _ready():
	pass


func _process(delta):
	ms += 1
	if ms > 9 :
		s += 1
		ms = 0
	
	if s > 59 :
		m += 1
		s = 0
		
	set_text(str(m)+":"+str(s)+":"+str(ms))

