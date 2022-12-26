extends Button


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_btn_training_1_player_pressed():
	get_tree().change_scene("res://scene/3d map/map_0_practice/map_practice_single_player.tscn")
