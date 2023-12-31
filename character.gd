extends CharacterBody2D
class_name Character

@export var player_number: int
var speed := 250
@onready var axis_left = "p%s_left" % player_number
@onready var axis_right = "p%s_right" % player_number
@onready var axis_up = "p%s_up" % player_number
@onready var axis_down = "p%s_down" % player_number


func _process(_delta):
  velocity = process_velocity()
  move_and_slide()

func process_velocity() -> Vector2:
  return speed * Input.get_vector( axis_left, axis_right, axis_up, axis_down )
