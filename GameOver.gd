extends Control
const MAIN_SCENE := "res://level/game.tscn" 

@onready var play_btn := $CenterContainer/VBoxContainer/PlayAgainButton
@onready var quit_btn := $CenterContainer/VBoxContainer/QuitButton

func _ready() -> void:
    # เชื่อมปุ่มกับฟังก์ชัน
    play_btn.pressed.connect(_on_play_pressed)


func _on_play_pressed() -> void:
    # กลับไปเริ่มเกมใหม่
    get_tree().change_scene_to_file(MAIN_SCENE)
