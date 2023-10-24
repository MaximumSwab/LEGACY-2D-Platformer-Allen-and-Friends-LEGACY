extends CanvasLayer

var coin_counter: int = 0

@onready var heartsContainer = $HUD/HeartsContainer

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	Signals.coin_collected.connect(_increment_coin_counter)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	$HUD/Collectables/Coins/CoinCounter.text = str(coin_counter)

# Increment the Coin coin_counter
func _increment_coin_counter() -> void: coin_counter += 1	
