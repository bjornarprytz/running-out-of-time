extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	Events.GameOver.connect(_game_over)
	Events.GameWin.connect(_game_win)


func _game_over():
	get_tree().paused = true
	var tween = create_tween().set_ease(Tween.EASE_OUT).set_trans(Tween.TRANS_EXPO)
	tween.tween_property($GameOver, 'position:y', 512, 2.0)
	
	
func _game_win():
	get_tree().paused = true
	var tween = create_tween()
	tween.tween_property($Win, 'position:y', 512, 2.0)
