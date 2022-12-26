extends RigidBody

export var rolling_force = 40
export var jump_impulse = 100

func _ready():
	$CameraRig.set_as_toplevel(true)
	$FloorCheck.set_as_toplevel(true) #cek bola sedang sentuh lantai atau tidak untuk kebutuhan jumping

func _physics_process(delta):
	var old_camera_pos = $CameraRig.global_transform.origin #posisi kamera diatas bola
	var ball_pos = global_transform.origin #posisi bola
	var new_camera_pos = lerp(old_camera_pos, ball_pos, 0.1)
	$CameraRig.global_transform.origin = new_camera_pos
	
	$FloorCheck.global_transform.origin = global_transform.origin
	
	if Input.is_action_pressed("forward2"):
		angular_velocity.x -= rolling_force*delta
	elif Input.is_action_pressed("back2"):
		angular_velocity.x += rolling_force*delta
	if Input.is_action_pressed("left2"):
		angular_velocity.z += rolling_force*delta
	elif Input.is_action_pressed("right2"):
		angular_velocity.z -= rolling_force*delta
	
	if Input.is_action_pressed("cam_1_m"):
		$CameraRig.rotation_degrees.y = 0
	elif Input.is_action_pressed("cam_2_m"):
		$CameraRig.rotation_degrees.y = 180
	if Input.is_action_pressed("cam_3_m"):
		$CameraRig.rotation_degrees.y = 90
	elif Input.is_action_pressed("cam_4_m"):
		$CameraRig.rotation_degrees.y = 270

	var is_on_floor = $FloorCheck.is_colliding()
	if Input.is_action_pressed("jump2") and is_on_floor :
		apply_central_impulse(Vector3.UP*jump_impulse)
