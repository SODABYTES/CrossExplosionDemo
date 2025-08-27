extends Node3D
@export var particles:Array[GPUParticles3D]
@export var duration:float = 0.25

@export var fire:Array[GPUParticles3D]

var wereParticlesStopped:bool = false;

# Called when the node enters the scene tree for the first time.
func _ready():
	for i in particles.size():
		particles[i].emitting = true


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
	duration -= delta
	if duration <= 0:
		if !wereParticlesStopped:
			for i in particles.size():
				particles[i].emitting = false;
			for i in fire.size():
				fire[i].hide()
	if duration <= -1:
		queue_free()
