extends CanvasLayer
var counter: int = 0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	Signals.coin_collected.connect(_increment_counter)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	$HUD/Coins/CoinCounter.text = str(counter)	
# Increment the Coin Counter
func _increment_counter() -> void: counter += 1

