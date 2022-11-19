extends KinematicBody2D

var active = false


const MOVE_SPEED = 500
const JUMP_FORCE = 1000
const GRAVITY = 50
const MAX_FALL_SPEED = 1000

onready var sprite = $WoodDude

var y_velo = 0
var facing_right = false

func _ready():
	pass


func _physics_process(delta):
	if active == true:
		var move_dir = 0
		if Input.is_action_pressed("player_right"):
			move_dir += 1
		if Input.is_action_pressed("player_left"):
			move_dir -= 1
		move_and_slide(Vector2(move_dir * MOVE_SPEED, y_velo), Vector2(0, -1))
		
		var grounded = is_on_floor()
		y_velo += GRAVITY
		if grounded and Input.is_action_just_pressed("player_jump"):
			y_velo = -JUMP_FORCE
		if grounded and y_velo >= 5:
			y_velo = 5
		if y_velo > MAX_FALL_SPEED:
			y_velo = MAX_FALL_SPEED
	else:
		pass


func flip():
	pass #talvez flipar o sprite em código


func _on_FreeToGoAfter_timeout():
	active = true
