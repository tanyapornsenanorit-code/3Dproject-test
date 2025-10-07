extends Control

@onready var play_btn := $CenterContainer/VBoxContainer/PlayAgainButton
@onready var quit_btn := $CenterContainer/VBoxContainer/QuitButton

func _ready() -> void:
	# 1. บังคับแสดงเมาส์
	Input.mouse_mode = Input.MOUSE_MODE_VISIBLE 
	
	get_tree().paused = false 

const GAME_SCENE_PATH = "res://menu/start_menu.tscn"


func _on_button_pressed() -> void:
	get_tree().change_scene_to_file("res://menu/start_menu.tscn")
