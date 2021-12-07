extends Node2D

func _physics_process(delta):
	if Input.is_action_pressed("reset"):
		get_tree().reload_current_scene()

func _ready():
	TimeDisplayer.TimerOn = true
