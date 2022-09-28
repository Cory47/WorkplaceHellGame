extends Label


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

var points = 0;

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _on_TaskHitbox_area_entered(area):
	points = points + 1
	text = str(points)
	
	if (points >= 10):
		print(get_tree().get_current_scene().get_name())
		if (get_tree().get_current_scene().get_name() == "Level4"):
			get_tree().change_scene("res://Scenes/Vacation.tscn")
		else:
			get_tree().change_scene("res://Scenes/WinMenu.tscn")
