extends KinematicBody2D

export (int) var speed = 100
export (int) var jump_speed = -200
export (int) var gravity = 300

var velocity = Vector2.ZERO

export (float, 0, 1.0) var friction = 0.1
export (float, 0, 1.0) var acceleration = 0.25

func move_direction() -> Vector2:
	return Vector2(
		Input.get_action_strength("ui_right") - Input.get_action_strength("ui_left"), 0)

func flip_sprite() -> void:
	if velocity.x < 0:
		$Sprite.flip_h = true
	if move_direction().x > 0:
		$Sprite.flip_h = false
		
func get_input():
	var dir = 0
	if Input.is_action_pressed("ui_right"):
		dir += 1
	if Input.is_action_pressed("ui_left"):
		dir -= 1
	if dir != 0:
		velocity.x = lerp(velocity.x, dir * speed, acceleration)
	else:
		velocity.x = lerp(velocity.x, 0, friction)
		
func _physics_process(delta):
	flip_sprite()
	get_input()
	velocity.y += gravity * delta
	velocity = move_and_slide(velocity, Vector2.UP)
	if Input.is_action_just_pressed("ui_up"):
		if is_on_floor():
			velocity.y = jump_speed
