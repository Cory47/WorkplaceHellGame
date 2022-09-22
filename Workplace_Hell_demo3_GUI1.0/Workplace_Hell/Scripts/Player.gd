extends KinematicBody2D

signal hit

var movespeed = 500

func _ready():
	pass # Replace with function body.

func _physics_process(delta):
	var motion = Vector2() 
	
	if Input.is_action_pressed("up"):
		motion.y -= 1
	if Input.is_action_pressed("down"):
		motion.y += 1
	if Input.is_action_pressed("left"):
		motion.x -= 1
	if Input.is_action_pressed("right"):
		motion.x += 1
	
	motion = motion.normalized()
	motion = move_and_slide(motion * movespeed)

	look_at(get_global_mouse_position())

	#Start Task
	#if Input.is_action_just_pressed("LMB"):

# https://www.youtube.com/watch?v=HycyFNQfqI0 watch for reference

func start(new_position):
	position = new_position
	show()
	$PlayerCollision.disabled = false



func _on_PlayerHitbox_area_entered(area):
	hide()
	$PlayerCollision.set_deferred("disabled", true)
	emit_signal("hit")
	get_tree().change_scene("res://Scenes/WinMenu.tscn")
	
