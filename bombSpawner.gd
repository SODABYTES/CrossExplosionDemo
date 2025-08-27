extends Node
@onready var sceneCenter:PackedScene = preload("res://prefab/ExplosionBombCenter.tscn")

# Called when the node enters the scene tree for the first time.
func _ready():
	#Engine.time_scale = 0.25
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_just_pressed("ui_accept"):
		add_child(sceneCenter.instantiate())
	pass
