extends Node2D

func _ready() -> void:
	Events.GoalReached.connect(_goal_reached)


func _goal_reached(goal: Goal):
	remove_child(goal)
	if (get_child_count() == 0):
		Events.GameWin.emit()

	
