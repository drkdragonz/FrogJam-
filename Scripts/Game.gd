extends Node2D

func _physics_process(delta):
	if Input.is_action_pressed("reset"):
		get_tree().change_scene("res://Scenes/World.tscn")


