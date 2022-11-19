extends KinematicBody2D


export var move_speed = 150
var velocity = Vector2(0, 1)


func _ready():
	pass


func _physics_process(delta):
	move_and_slide(velocity * move_speed)
