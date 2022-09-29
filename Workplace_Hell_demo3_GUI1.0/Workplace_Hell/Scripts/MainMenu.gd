extends Control

# Called when the node enters the scene tree for the first time.
func _ready():
	$"Menu Group/StartButton".grab_focus()

func _on_Start_Button_pressed():
	$LevelSelect.visible = true;
	$"Menu Group".visible = false;
	$"LevelSelect/LevelSelectContainer/Level1Button".grab_focus()


func _on_Quit_Button_pressed():
	get_tree().quit()


func _on_CreditsButton_pressed():
	get_tree().change_scene("res://Scenes/Credits.tscn")
