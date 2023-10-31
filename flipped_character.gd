extends Character


func process_velocity() -> Vector2:
  return speed * Input.get_vector( axis_down, axis_up, axis_right, axis_left )
