extends StaticBody2D



func _on_Area2D_body_entered(body):
	if body.get_name() == "Player":
		$AnimationPlayer.play("Fall")
		


func _on_Area2D_body_exited(body):
	$Area2D.monitoring == false
	$Area2D.monitorable == false
	yield(get_tree().create_timer(6.0), "timeout")
	$Area2D.monitoring == true
	$Area2D.monitorable == true


