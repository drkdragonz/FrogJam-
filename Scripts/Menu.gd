extends Control

func _ready():
	pass 




func _on_Start_pressed():
	get_tree().change_scene("res://Scenes/OpeningAnim.tscn")

func _on_Quit_pressed():
	get_tree().quit()


func _on_Credits_pressed():
	get_tree().change_scene("res://Scenes/Credits.tscn")
