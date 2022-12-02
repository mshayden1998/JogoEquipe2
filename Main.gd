extends Node2D


var screen_size
export (PackedScene) var Platform
onready var life_info = $InGame/LifeInfo


func _ready():
	screen_size = get_viewport_rect().size
	life_info.frame = 0


func _on_SpawnTimer_timeout():
	# criar uma nova plataforma ao zerar o timer e adiciona a cena
	var platform = Platform.instance()
	add_child(platform)
	platform.position = Vector2(rand_range(50, screen_size.x), 0) #define a posição inicial da plataforma, em x, randômico, em y, fora da tela.


func _on_Player_got_hit():
	if life_info.frame < 2:
		life_info.frame += 1


func _on_WinTimer_timeout():
	get_tree().change_scene("res://FinalScreen.tscn")


func _on_Player_died():
	get_tree().reload_current_scene()
