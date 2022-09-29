extends Control

# Called when the node enters the scene tree for the first time.
func _ready():
	$"LevelSelectContainer/Level1Button".grab_focus()


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
func _on_MenuButton_pressed():
	get_tree().change_scene("res://Scenes/MainMenu.tscn")

func _on_Level1Button_pressed():
	get_tree().change_scene("res://Scenes/levels/level1.tscn")

func _on_Level2Button_pressed():
	get_tree().change_scene("res://Scenes/levels/level2.tscn")
	
func _on_Level3Button_pressed():
	get_tree().change_scene("res://Scenes/levels/level3.tscn")
	
func _on_Level4Button_pressed():
	get_tree().change_scene("res://Scenes/levels/level4.tscn")
