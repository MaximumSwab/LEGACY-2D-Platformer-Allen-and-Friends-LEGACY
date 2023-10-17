extends Node2D

signal coin_collected

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _on_area_2d_body_entered(body: Node2D) -> void:
	if body.has_method("collect_coin"):
		body.collect_coin()
		#emit_signal("coin_collected")
		Signals.coin_collected.emit()
		queue_free()

