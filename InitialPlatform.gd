extends KinematicBody2D

signal destroyed


func _on_Timer_timeout():
	emit_signal("destroyed")
	queue_free()
