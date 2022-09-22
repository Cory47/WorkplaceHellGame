extends KinematicBody2D

var motion = Vector2()

func _ready():
	pass # Replace with function body.

func _physics_process(delta):
	var Player = get_parent().get_node("Player")
	
	#Every frame, send a ray cast up/down/left/right
	
	# Most of the time, raycast will strike walls
	
	# If the raycast hits player, Boss
	# will quickly move in player direction
	# See reference: https://docs.godotengine.org/en/stable/tutorials/physics/ray-casting.html
	
	
	position += (Player.position - position)/50
	look_at(Player.position)
	
	move_and_collide(motion)
