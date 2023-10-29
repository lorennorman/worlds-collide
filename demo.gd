extends Node2D

# force all subviewports to use the primary world2d
@onready var sub_viewport_1: SubViewport = $CanvasLayer/GridContainer/SubViewportContainer/SubViewport
@onready var sub_viewport_2: SubViewport = $CanvasLayer/GridContainer/SubViewportContainer2/SubViewport
@onready var sub_viewport_3: SubViewport = $CanvasLayer/GridContainer/SubViewportContainer3/SubViewport
@onready var sub_viewport_4: SubViewport = $CanvasLayer/GridContainer/SubViewportContainer4/SubViewport


func _ready() -> void:
  sub_viewport_1.world_2d = get_viewport().world_2d
  sub_viewport_2.world_2d = get_viewport().world_2d
  sub_viewport_3.world_2d = get_viewport().world_2d
  sub_viewport_4.world_2d = get_viewport().world_2d
