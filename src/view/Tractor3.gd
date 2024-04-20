extends CharacterBody2D

func _ready():
	pass 

func _process(delta):
	pass

func _physics_process(delta):
	var screensize = get_viewport_rect().size
	var input = Vector2()
	
	if Input.is_key_pressed(KEY_W):
		input.y = -10
	elif Input.is_key_pressed(KEY_S):
		input.y = 10
	if Input.is_key_pressed(KEY_A):
		input.x = -10
	elif Input.is_key_pressed(KEY_D):
		input.x = 10
	if Input.is_key_pressed(KEY_UP):
		input.y = -1
	elif Input.is_key_pressed(KEY_DOWN):
		input.y = 1
	if Input.is_key_pressed(KEY_LEFT):
		input.x = -1
	elif Input.is_key_pressed(KEY_RIGHT):
		input.x = 1
		
	position += input
	position.x = clamp(position.x, 0, screensize.x)
	position.y = clamp(position.y, 0, screensize.y)
