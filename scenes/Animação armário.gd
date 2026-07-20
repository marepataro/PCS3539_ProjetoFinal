extends CSGCombiner3D
@export var open = false
var playback = null

func _ready():
	playback = $AnimationTree.get("parameters/playback")
	
func porta_armario(_body):
	open = !open
	
	if open:
		playback.travel("armário abrir")
		print("abrir")
	else:
		playback.travel("armário fechar")
		print("fechar")
