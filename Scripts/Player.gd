extends CharacterBody2D

@export var speed = 300
@onready var screensize = get_viewport_rect().size

func _process(delta):
	var direction = Input.get_vector("Left", "Right", "Up", "Down")
	if direction.x > 0:
		$ShipTexture.animation = "Right_Flying"
	elif direction.x < 0:
		$ShipTexture.animation = "Left_Flying"
	else: 
		$ShipTexture.animation = "Flying"
	velocity = direction * speed
	move_and_slide()
