extends Panel

@onready var anim = $AnimationPlayer

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:	
	pass

func update(heartStatus: int):	
	if heartStatus == 2:
		$Sprite2D.texture=ResourceLoader.load("res://Resources/Sprites/Heart_.tres")
	elif heartStatus == 1:
		$Sprite2D.texture=ResourceLoader.load("res://Resources/Sprites/Heart_Half.tres")
	elif heartStatus == 0:
		$Sprite2D.texture=ResourceLoader.load("res://Resources/Sprites/Heart_Empty.tres")
