extends KinematicBody2D


var xValues = [100, 200, 0, -100, -200]
var yValues = [100, 200, 0, -150, 200]
var counter = 0;

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_TaskHitbox_area_entered(area):
	if (counter > xValues.size() - 1):
		counter = counter - xValues.size()
	position.x = xValues[counter]
	position.y = yValues[counter]
	counter = counter + 1
	
