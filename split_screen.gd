extends Node2D


func _ready():
  var children = get_children()
  var players = children.filter(func(child):
    # only external children
    return child.owner != self
  ).filter(func(child):
    # that are visible
    return child.visible
  )
  var player_count = players.size()
  # create new viewports and assign players
  match player_count:
    0:
      printerr("No players provided")
      return

    1, 2, 3, 4, 5, 6, 7, 8, 9:
      # tune the grid to the task
      var grid_container := $CanvasLayer/GridContainer
      if player_count == 1: grid_container.columns = 1
      elif player_count > 6: grid_container.columns = 3

      # add a viewport per player to the grid
      for player in players: add_player_viewport(player, grid_container)

    _:
      printerr("Too many players provided: %s" % player_count)
      return


func add_player_viewport(player: Node2D, container):
  # create the viewport container stack
  var player_viewport = preload('res://player_viewport.tscn').instantiate()
  player_viewport.player = player
  container.add_child(player_viewport)
