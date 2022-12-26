extends Control

var video_player
var video 

func _ready():
	video_player = get_node("VideoPlayer")
	video = preload("res://assets/video/Splash Screen.webm")
	video_player.set_stream( video )
	set_process( true )

func _process(delta):
	if not video_player.is_playing(): video_player.play()
