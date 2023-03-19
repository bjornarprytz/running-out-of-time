extends Node2D

@export var turn_speed : float = 5.0
@export var run_speed : float = 100.0

func _physics_process(delta: float) -> void:
	if (Input.is_key_pressed(KEY_W)):
		translate(-transform.y.normalized() * delta * run_speed)
	if (Input.is_key_pressed(KEY_A)):
		rotate(-turn_speed * delta)
	if (Input.is_key_pressed(KEY_D)):
		rotate(turn_speed * delta)

func _on_area_2d_area_exited(area: Area2D) -> void:
	if (!(area.owner is Goal)):
		Events.GameOver.emit()
	
