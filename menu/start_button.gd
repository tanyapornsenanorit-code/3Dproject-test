extends Button

func _on_pressed() -> void:
	const GAME_SCENE_PATH = "res://level/game.tscn"
	get_tree().change_scene_to_file("res://level/game.tscn")
