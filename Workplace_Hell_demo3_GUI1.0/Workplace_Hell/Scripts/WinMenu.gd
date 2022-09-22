extends Control


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	$"WinMenuContainer/MenuButton".grab_focus()


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_MenuButton_pressed():
	get_tree().change_scene("res://Scenes/LevelSelect.tscn")


func _on_RetryButton_pressed():
	get_tree().change_scene("res://Scenes/level.tscn")
