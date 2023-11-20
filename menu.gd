extends Container

@onready var first_item = get_child(0)


func _ready() -> void:
  default_focus()


func _on_visibility_changed() -> void:
  default_focus()


func default_focus():
  if first_item: first_item.grab_focus()
