extends Control


func _on_BtnExit_button_up():
	get_tree().quit()


func _on_BtnRestart_button_up():
	get_tree().change_scene("res://Main.tscn")
