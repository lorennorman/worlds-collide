extends SubViewportContainer
class_name PlayerViewport

@export var player: Node2D
@onready var sub_viewport: SubViewport = $SubViewport2
@onready var camera_2d: FollowCamera2D = $SubViewport2/Camera2D


func _ready() -> void:
  sub_viewport.world_2d = get_viewport().world_2d
  if not player: return printerr('PlayerViewport ready without a Player: %s' % self)

  camera_2d.target = player
  sub_viewport.connect("size_changed", _adjust_zoom_to_viewport)


func _adjust_zoom_to_viewport():
  var min_pixels = min(sub_viewport.size.x, sub_viewport.size.y)
  # FIXME: terrible naive zoom guess from viewport size
  var zoom_value = clamp(log(3+5 / (5 - min(min_pixels/400.0, 4.999))), 0.5, 5)
  camera_2d.zoom = Vector2(zoom_value, zoom_value)
