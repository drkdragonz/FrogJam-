extends Area2D

func _on_AnimationPlayer_animation_finished(anim_name):
	if anim_name == "Fade Out":
		get_tree().change_scene("res://Scenes/Forest1.tscn")


func _on_Area2D_body_entered(body):
	if body.get_name() == "IcePlayer":
		$AnimationPlayer.play("Fade Out")
