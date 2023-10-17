extends Container

@onready var heart_1: TextureRect = $HUD/HealthPoints/Heart1
@onready var heart_2: TextureRect = $HUD/HealthPoints/Heart2
@onready var heart_3: TextureRect = $HUD/HealthPoints/Heart3
var heart3 = "res://Imported_Assets/kenney_pixel-platformer/Tiles/tile_0045.png"

var heart_hit_points: int = 2
var hearts_remaining: int = 3

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	Signals.hazzard_contact.connect(_decrease_health)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if heart_hit_points == 0:	hearts_remaining -= 1
	
	if hearts_remaining == 3:
		heart_3.set_texture(heart3)
	elif hearts_remaining == 2:
		pass
	elif hearts_remaining == 1:
		pass
	else:
		pass
	
func _decrease_health() -> void: heart_hit_points -= 1
