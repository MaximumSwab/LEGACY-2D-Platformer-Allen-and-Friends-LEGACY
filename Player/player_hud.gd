extends CanvasLayer

const MAX_HEALTH = 6

var coin_counter: int = 0
var health_counter: int = MAX_HEALTH

var health_containers: int = MAX_HEALTH/2
var health_point_counter: int = 2

@onready var heartsContainer = $HUD/HeartsContainer

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	heartsContainer.setMaxHearts(3)
	Signals.coin_collected.connect(_increment_coin_counter)
	Signals.hazzard_contact.connect(_decrease_health)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	$HUD/Collectables/Coins/CoinCounter.text = str(coin_counter)
	
	_update_health()
	print(health_counter)
	
# Increment the Coin coin_counter
func _increment_coin_counter() -> void: coin_counter += 1

func _decrease_health() -> void: health_counter -= 1
	

func _update_health() -> void:
		
	if health_counter % 2 != 0:
		health_containers -= 1
		
		
#	if health_containers == 3:
#		if health_counter % 2 != 0:
#			$HUD/Collectables/HealthContainers/Containter_3.set_texture(res://Resources/Sprites/Heart_Half.tres)
#			pass
#	elif health_containers == 2:
#		pass
#	elif health_containers == 1:
#		pass
#	else:
#		pass
