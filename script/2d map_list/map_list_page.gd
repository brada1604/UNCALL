extends Node2D


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
	get_tree().change_scene("res://scene/3d map/map_2_mountain/map_mountain_single_player_billiard.tscn")


func _on_btn_training_1_player2_pressed():
	get_tree().change_scene("res://scene/3d map/map_2_mountain/map_mountain_single_player_bulan.tscn")


func _on_btn_training_1_player3_pressed():
	get_tree().change_scene("res://scene/3d map/map_2_mountain/map_mountain_single_player_golf.tscn")


func _on_btn_training_1_player4_pressed():
	get_tree().change_scene("res://scene/3d map/map_2_mountain/map_mountain_single_player_soccer.tscn")


func _on_btn_training_1_player5_pressed():
	get_tree().change_scene("res://scene/3d map/map_2_mountain/map_mountain_single_player_voly.tscn")


func _on_btn_training_1_player6_pressed():
	get_tree().change_scene("res://scene/3d map/map_2_mountain/map_mountain_single_player_world.tscn")


func _on_btn_fantasy_1_player_pressed():
	get_tree().change_scene("res://scene/3d map/map_3_fantasy/map_fantasy_single_player_billiard.tscn")


func _on_btn_fantasy_1_player2_pressed():
	get_tree().change_scene("res://scene/3d map/map_3_fantasy/map_fantasy_single_player_bulan.tscn")


func _on_btn_fantasy_1_player3_pressed():
	get_tree().change_scene("res://scene/3d map/map_3_fantasy/map_fantasy_single_player_golf.tscn")


func _on_btn_fantasy_1_player4_pressed():
	get_tree().change_scene("res://scene/3d map/map_3_fantasy/map_fantasy_single_player_soccer.tscn")


func _on_btn_fantasy_1_player5_pressed():
	get_tree().change_scene("res://scene/3d map/map_3_fantasy/map_fantasy_single_player_voly.tscn")


func _on_btn_fantasy_1_player6_pressed():
	get_tree().change_scene("res://scene/3d map/map_3_fantasy/map_fantasy_single_player_world.tscn")


func _on_btn_home_1_player_pressed():
	get_tree().change_scene("res://scene/3d map/map_4_home/map_home_single_player_billiard.tscn")


func _on_btn_home_1_player2_pressed():
	get_tree().change_scene("res://scene/3d map/map_4_home/map_home_single_player_bulan.tscn")


func _on_btn_home_1_player3_pressed():
	get_tree().change_scene("res://scene/3d map/map_4_home/map_home_single_player_golf.tscn")


func _on_btn_home_1_player4_pressed():
	get_tree().change_scene("res://scene/3d map/map_4_home/map_home_single_player_soccer.tscn")


func _on_btn_home_1_player5_pressed():
	get_tree().change_scene("res://scene/3d map/map_4_home/map_home_single_player_voly.tscn")


func _on_btn_home_1_player6_pressed():
	get_tree().change_scene("res://scene/3d map/map_4_home/map_home_single_player_world.tscn")
