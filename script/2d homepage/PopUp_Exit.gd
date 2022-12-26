extends CenterContainer

onready var tween = $Tween


# Called when the node enters the scene tree for the first time.
func _ready():
	pass


func muncul() :
	tween.interpolate_property(self, "rect_position:y", -500, 80, 1, Tween.TRANS_ELASTIC, Tween.EASE_OUT)
	tween.start()

func tenggelam() :
	tween.interpolate_property(self, "rect_position:y", 80, -500, 1, Tween.TRANS_ELASTIC, Tween.EASE_OUT)
	tween.start()

func _on_btn_exit_pressed():
	muncul()


func _on_btn_exit_y_pressed():
	get_tree().quit()


func _on_btn_exit_n_pressed():
	tenggelam()


func _on_btn_game_over_ok_pressed():
	tenggelam()
	get_tree().change_scene("res://scene/2d home/home_page.tscn")
