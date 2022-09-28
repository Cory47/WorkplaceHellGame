extends KinematicBody2D


var xValues;
var yValues;
var counter = 0;
var points = 0;
var level;

func _ready():
	level = get_tree().get_current_scene().get_name()
	if (level == "Level1"):
		xValues = [100, 200, 0, -100, -200]
		yValues = [100, 200, 0, -150, 200]
	if (level == "Level2"):
		xValues = [-104, 414, -213, -18, -460]
		yValues = [58, 76, 75, -240, 240]
	if (level == "Level3"):
		xValues = [-190, 200, 0, 190, -160]
		yValues = [90, 90, 0, -100, -125]
	if (level == "Level4"):
		xValues = [-470, -470, 470, 470, 0]
		yValues = [-278, 278, -278, 278, 0]
func _on_TaskHitbox_area_entered(area):
	if (area.name == "PlayerHitbox"):
		if (counter > xValues.size() - 1):
			counter = counter - xValues.size()
		position.x = xValues[counter]
		position.y = yValues[counter]
		counter = counter + 1
		points = points + 1
	
