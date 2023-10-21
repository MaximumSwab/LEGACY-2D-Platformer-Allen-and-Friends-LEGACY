extends HBoxContainer
 
@onready var HeartGuiCLass = preload("res://Resources/GUI/heart_Gui.tscn")

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func setMaxHearts(max: int):
	for i in range(max):
		var heart = HeartGuiCLass.instantiate()
		add_child(heart)

func updateHearts(currentHealth: int):
	pass
