extends Area2D

var n = 7

func _physics_process(delta):
	var screensize = get_viewport_rect().size
	var input = Vector2()
	
	if Input.is_key_pressed(KEY_W):
		input.y = -n
	elif Input.is_key_pressed(KEY_S):
		input.y = n
	if Input.is_key_pressed(KEY_A):
		input.x = -n
	elif Input.is_key_pressed(KEY_D):
		input.x = n
		
	position += input
	position.x = clamp(position.x, 0, screensize.x) #prevents player from running offscreen
	position.y = clamp(position.y, 0, screensize.y)

func _on_body_entered(body):
	$Health.lose_life()
	$OOF.play()
