extends CSGCombiner3D
@export var open = false
var playback = null

func _ready():
	playback = $AnimationTree.get("parameters/playback")
	
func almofada(_body):
	playback.travel("almofada 1")
	print("mover almofada")
	
