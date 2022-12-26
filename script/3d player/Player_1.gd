extends RigidBody

export var rolling_force = 40
export var jump_impulse = 100

func _ready():
	$CameraRig.set_as_toplevel(true)
	$FloorCheck.set_as_toplevel(true) #cek bola sedang sentuh lantai atau tidak untuk kebutuhan jumping

func _physics_process(delta):
	var old_camera_pos = $CameraRig.global_transform.origin #posisi kamera diatas bola
	var player_1_pos = global_transform.origin #posisi bola
	var new_camera_pos = lerp(old_camera_pos, player_1_pos, 0.1)
	var custom_camera_pos
	
	
	$CameraRig.global_transform.origin = new_camera_pos
	
	$FloorCheck.global_transform.origin = global_transform.origin
	
	if Input.is_action_pressed("forward"):
		angular_velocity.x -= rolling_force*delta
	elif Input.is_action_pressed("back"):
		angular_velocity.x += rolling_force*delta
	if Input.is_action_pressed("left"):
		angular_velocity.z += rolling_force*delta
	elif Input.is_action_pressed("right"):
		angular_velocity.z -= rolling_force*delta

	var is_on_floor = $FloorCheck.is_colliding()
	if Input.is_action_pressed("jump") and is_on_floor :
		apply_central_impulse(Vector3.UP*jump_impulse)
	
	if Input.is_action_pressed("cam_1"):
		$CameraRig.rotation_degrees.y = 0
	elif Input.is_action_pressed("cam_2"):
		$CameraRig.rotation_degrees.y = 180
	if Input.is_action_pressed("cam_3"):
		$CameraRig.rotation_degrees.y = 90
	elif Input.is_action_pressed("cam_4"):
		$CameraRig.rotation_degrees.y = 270
	
	if Input.is_action_pressed("Refresh"):
		get_tree().reload_current_scene();
	
	if Input.is_action_pressed("exit_play_game"):
		get_tree().change_scene("res://scene/2d home/home_page.tscn");
		
