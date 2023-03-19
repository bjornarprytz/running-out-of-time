extends Node2D
class_name Goal


func _on_area_2d_area_entered(area: Area2D) -> void:
	if (area.owner.name == "Player"):
		Events.GoalReached.emit(self)
		queue_free()
