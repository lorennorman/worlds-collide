extends CanvasLayer

@export var current_scene: PackedScene


func _ready():
  if !current_scene: return
  var scene = current_scene.instantiate()
  get_parent().add_child.call_deferred(scene)
  toggle_menu_mode()


func _unhandled_input(event):
  if event is InputEventKey:
    if event.pressed and event.keycode == KEY_ESCAPE:
      toggle_menu_mode()


var in_menu = true
func toggle_menu_mode():
  in_menu = !in_menu
  visible = in_menu
  get_tree().paused = in_menu
