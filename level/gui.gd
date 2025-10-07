extends Node3D

# ใช้ @onready เพื่อเชื่อมโยง Node โดยอัตโนมัติจาก Scene Tree
@onready var game_timer = $Timer 
@onready var timer_label = $LabelTime # ใช้ชื่อ Label ของคุณคือ LabelTime

# **สำคัญ: ตั้ง Path ไปยังไฟล์ Scene เมนูของคุณ**
const MAIN_MENU_SCENE_PATH = "res://Scenes/start_menu.tscn" # ให้เปลี่ยน Path นี้ตามไฟล์ .tscn จริง

# ฟังก์ชันนี้ถูกเรียกทุกเฟรมของเกม
func _process(delta):
	# ตรวจสอบว่า Timer กำลังทำงานหรือไม่
	if game_timer.is_stopped():
		return

	# ดึงเวลาที่เหลือในหน่วยวินาที
	var time_left_sec = game_timer.time_left
	
	# แปลงเวลาให้เป็น นาที:วินาที
	var minutes = int(time_left_sec / 60)
	var seconds = int(time_left_sec) % 60
	
	# จัดรูปแบบสตริง (เช่น 1:05, 0:30)
	# %02d คือการบังคับให้มี 2 หลัก ถ้าเป็นเลขหลักเดียวจะเติม 0 ด้านหน้า
	var time_string = "%d:%02d" % [minutes, seconds]
	
	# อัปเดตข้อความใน Label
	timer_label.text = "Time Left: " + time_string


# **ฟังก์ชันนี้จะถูกสร้างเมื่อคุณเชื่อมต่อ Signal (ดูขั้นตอนที่ 3)**
# มันจะถูกเรียกเมื่อ Timer นับถึง 0
func _on_timer_timeout():
	# สั่งให้ Scene Tree เปลี่ยนไปโหลด Scene เมนูหลัก
	get_tree().change_scene_to_file(MAIN_MENU_SCENE_PATH)
