extends Area

func _on_DeathZone_body_entered(body):
	if body.name == "Ball" :
		get_tree().reload_current_scene();
	
	elif body.name == "Player_1_billiard" :
		get_tree().reload_current_scene();
	
	elif body.name == "Player_1_bulan" :
		get_tree().reload_current_scene();
	
	elif body.name == "Player_1_golf" :
		get_tree().reload_current_scene();
	
	elif body.name == "Player_1_soccer" :
		get_tree().reload_current_scene();
		
	elif body.name == "Player_1_voly" :
		get_tree().reload_current_scene();
	
	elif body.name == "Player_1_world" :
		get_tree().reload_current_scene();
