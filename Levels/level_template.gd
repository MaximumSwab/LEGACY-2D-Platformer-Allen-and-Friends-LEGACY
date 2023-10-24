extends Node2D

@onready var heartContainers = $PlayerHud/HeartsContainer
@onready var player = $Player/CharacterBody2D
#heartContainers.heartStatus
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	heartContainers.setMaxHearts(player.maxHealth)
	#Signals.hazzard_contact.connect(heartContainers.updateHearts((heartContainers.heartCounter)	)	)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	heartContainers.updateHearts()
	#pass
