extends Camera2D
class_name FollowCamera2D

@export var target: Node2D


func _process(_delta: float) -> void:
  position = target.position
