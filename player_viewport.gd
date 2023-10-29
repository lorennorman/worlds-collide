extends CenterContainer


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
  #var container = $SubViewportContainer
  var viewport = $SubViewportContainer/SubViewport

  #viewport.size = get_viewport_rect().size * Vector2(.5, 1)
