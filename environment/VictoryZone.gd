extends Area

export(String, FILE, "*.tcsn") var NEXT_LEVEL = ""

func _on_VictoryZone_body_entered(body):
	if body.name == "Ball" :
		get_tree().change_scene(NEXT_LEVEL);
	
	if body.name == "Player_1_billiard" :
		get_tree().change_scene(NEXT_LEVEL);
	
	if body.name == "Player_1_bulan" :
		get_tree().change_scene(NEXT_LEVEL);
	
	if body.name == "Player_1_golf" :
		get_tree().change_scene(NEXT_LEVEL);
	
	if body.name == "Player_1_soccer" :
		get_tree().change_scene(NEXT_LEVEL);
	
	if body.name == "Player_1_voly" :
		get_tree().change_scene(NEXT_LEVEL);
	
	if body.name == "Player_1_world" :
		get_tree().change_scene(NEXT_LEVEL);
