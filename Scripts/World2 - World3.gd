extends Area2D







func _on_AnimationPlayer_animation_finished(anim_name):
	get_tree().change_scene("res://Scenes/World3.tscn")


func _on_Area2D_body_entered(body):
	if body.get_name() == "Player":
		$AnimationPlayer.play("Fade Out")
