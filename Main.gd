extends Node2D

var screen_size
export (PackedScene) var Platform


func _ready():
	screen_size = get_viewport_rect().size


func _physics_process(delta):
	pass


func _on_SpawnTimer_timeout():
	var platform = Platform.instance()
	add_child(platform)
	platform.position = Vector2(rand_range(50, screen_size.x), -10) #define a posição inicial da plataforma, em x, randômico, em y, fora da tela.
