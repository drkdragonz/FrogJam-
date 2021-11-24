extends Area2D







func _on_Area2d_body_entered(body):
	if body.get_name() == "Player" or "IcePlayer":
		$Camera2D.current = true


func _on_Area2D_body_entered(body):
	if body.get_name() == "Player" or "IcePlayer":
		$Camera2D2.current = true



func _on_Area2D2_body_entered(body):
	if body.get_name() == "Player" or "IcePlayer":
		$Camera2D3.current = true

