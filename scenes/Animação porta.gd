extends CSGCombiner3D
@export var open = false
var playback = null

func _ready():
	playback = $AnimationTree.get("parameters/playback")
	
func porta(_body):
	open = !open
	
	if open:
		playback.travel("porta abrir")
		print("abrir")
	else:
		playback.travel("porta fechar")
		print("fechar")
