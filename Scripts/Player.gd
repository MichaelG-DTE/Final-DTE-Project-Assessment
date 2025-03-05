extends CharacterBody2D

@export var speed = 300
@onready var screensize = get_viewport_rect().size

func _process(delta):
	var direction = Input.get_vector("Left", "Right", "Up", "Down")
	if direction.x > 0:
		$ShipTexture.animation = "Right_Flying"
		$ShipTexture/Thrusters.animation = "Right_Thrusters"
	
	elif direction.x < 0:
		$ShipTexture.animation = "Left_Flying"
		$ShipTexture/Thrusters.animation = "Left_Thrusters"
		
	else: 
		$ShipTexture.animation = "Flying"
		$ShipTexture/Thrusters.animation = "Thrusters"
	velocity = direction * speed
	move_and_slide()
