extends KinematicBody2D


export var move_speed = 150
var velocity = Vector2(0, -1)


func _physics_process(_delta):
	move_and_slide(velocity * move_speed)


func _process(delta):
	# apaga a instância da plataforma se ela estiver fora da tela no eixo Y (ou
	# seja, libera memória)
	if position.y < -5:
		queue_free()
