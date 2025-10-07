extends Button

const GAME_SCENE_PATH = "res://level/game.tscn"

# ฟังก์ชันที่ทำงานเมื่อกดปุ่ม 'Start'
func _on_start_button_pressed():
	get_tree().change_scene_to_file("res://level/game.tscn")
