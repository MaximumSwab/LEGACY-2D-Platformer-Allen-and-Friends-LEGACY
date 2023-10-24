extends HBoxContainer
 
@onready var HeartGuiCLass = preload("res://Resources/GUI/heart_Gui.tscn")

var hitPoints: int = 2
var heartCounter: int = 2

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	Signals.hazzard_contact.connect(LoseHitPoints)	

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func setMaxHearts(max: int):
	for i in range(max):
		var heart = HeartGuiCLass.instantiate()
		add_child(heart)

func updateHearts():
	var hearts = get_children()	
	hearts[heartCounter].update(hitPoints)
	print("Debug heartCounter " + str(heartCounter) + " Debug hitPoints " + str(hitPoints))

func LoseHitPoints() -> void: 
	hitPoints -= 1	
	if hitPoints < 0:
		heartCounter -= 1
		hitPoints = 2
