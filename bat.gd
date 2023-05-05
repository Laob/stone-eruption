extends StaticBody2D

var screen_size

# Called when the node enters the scene tree for the first time.
func _ready():
	screen_size = get_viewport_rect().size
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_pressed("move_right"):
		position.x += 2		
	if Input.is_action_pressed("move_left"):
		position.x -= 2		
		
	position.x = clamp(position.x, 0, screen_size.x)
	position.y= clamp(position.y, 0, screen_size.y)
	pass
