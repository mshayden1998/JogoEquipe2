extends Label


func _on_InitPlatform_destroyed():
	queue_free()


func _on_Timer_timeout():
	if visible == true:
		visible = false
	else:
		visible = true
