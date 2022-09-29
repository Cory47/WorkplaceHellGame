extends KinematicBody2D

signal hit

var movespeed = 500
var GODMODE = false

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
	if Input.is_action_pressed("pause"):
		if (get_tree().paused == true):
			$"PlayerCamera/LevelSelectContainer".visible = false;
			get_tree().paused = false
		else:
			$"PlayerCamera/LevelSelectContainer".visible = true;
			$"PlayerCamera/LevelSelectContainer/ResumeButton".grab_focus()
			$"PlayerCamera/PauseBackground".visible = true;
			get_tree().paused = true
	
	motion = motion.normalized()
	motion = move_and_slide(motion * movespeed)

	#Start Task
	#if Input.is_action_just_pressed("LMB"):

# https://www.youtube.com/watch?v=HycyFNQfqI0 watch for reference

func start(new_position):
	position = new_position
	show()
	$PlayerCollision.disabled = false



func _on_PlayerHitbox_area_entered(area):
	if (area.name == "TaskHitbox"):
		pass
	if (area.name == "BossHitbox" && GODMODE == false):
		get_tree().change_scene("res://Scenes/LoseMenu.tscn")
	


func _on_ResumeButton_pressed():
	
	$"PlayerCamera/LevelSelectContainer".visible = false;
	$"PlayerCamera/PauseBackground".visible = false;
	get_tree().paused = false


func _on_MenuButton_pressed():
	get_tree().paused = false
	get_tree().change_scene("res://Scenes/MainMenu.tscn")


func _on_NuxModeButton_pressed():
	GODMODE = !GODMODE
	if (GODMODE == true): 
		$"PlayerCamera/LevelSelectContainer/NuxModeIndicator".text = str("NUX MODE ENABLED")
	else:
		$"PlayerCamera/LevelSelectContainer/NuxModeIndicator".text = str("NUX MODE DISABLED")
	get_tree().paused = false
	$"PlayerCamera/LevelSelectContainer".visible = false;
	$"PlayerCamera/PauseBackground".visible = false;
