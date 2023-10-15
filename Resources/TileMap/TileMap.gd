#extends TileMap
#
## Unique index of your coin tile
#const COIN_TILE_ID := 1
#
#const CoinScene := preload("res://Resources/TileMap/tile_maps.tscn")
#
#@onready var _coins_tilemap: TileMap = $Interactables
#
#func generate_coins_from_tiles() -> void:
#	for tile_position in _coins_tilemap.get_used_cells_by_id(COIN_TILE_ID):
#		var coin = CoinScene.instance()
#		coin.position = (
#			_coins_tilemap.map_to_world(tile_position)
#			+ _coins_tilemap.cell_size / 2.0
#		)
#		add_child(coin)
#
#	_coins_tilemap.queue_free()
