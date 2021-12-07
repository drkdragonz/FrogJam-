extends Node2D

func _physics_process(delta):
	if Input.is_action_pressed("reset"):
		get_tree().reload_current_scene()

func _ready():
	TimeDisplayer.TimerOn = false

func _on_AnimationPlayer_animation_finished(anim_name):
	get_tree().change_scene("res://Scenes/Menu.tscn")
