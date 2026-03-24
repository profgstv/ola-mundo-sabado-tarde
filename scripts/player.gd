extends CharacterBody2D

@onready var sprite: AnimatedSprite2D = $Sprite

var sprite_direction := "down"

const SPEED = 300.0

func animation(mov, dir):
	sprite_direction = dir
	sprite.play(mov + "_" + dir)
	pass

func _physics_process(_delta: float) -> void:
	#movimento
	var direction := Vector2(
		Input.get_axis("ui_left", "ui_right"),
		Input.get_axis("ui_up", "ui_down")
	)
	velocity = direction.normalized() * SPEED

	move_and_slide()
	
	#animação
	if velocity.x > 0:
		animation("run", "right")
	elif velocity.x < 0:
		animation("run", "left")
	elif velocity.y > 0:
		animation("run", "down")
	elif velocity.y < 0:
		animation("run", "up")
	else:
		animation("idle", sprite_direction)
		pass
