extends PointLight2D


@export var shrink_speed : float = 1.0

func _physics_process(delta: float) -> void:
	if (Input.is_key_pressed(KEY_W)):
		scale -= Vector2.ONE * delta * shrink_speed
