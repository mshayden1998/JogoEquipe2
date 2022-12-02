extends KinematicBody2D


var screen_size
export var move_speed = 150
var velocity = Vector2(0, 1)


func _ready():
	screen_size = get_viewport_rect().size


func _physics_process(_delta):
	move_and_slide(velocity * move_speed)


func _process(_delta):
	# apaga a instância da plataforma se ela estiver fora da tela no eixo Y (ou
	# seja, libera memória)
	if position.y > screen_size.y + 5:
		queue_free()
	
	if position.y > get_tree().get_nodes_in_group("player")[0].position.y + 64:
		$CollisionShape2D.disabled = false
	else:
		$CollisionShape2D.disabled = true
