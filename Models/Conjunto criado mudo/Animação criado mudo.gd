extends CSGCombiner3D
@export var open = false
var playback = null

func _ready():
	playback = $AnimationTree.get("parameters/playback")
	
func gaveta_criado_mudo(_body):
	open = !open
	
	if open:
		playback.travel("Criado mudo abrir")
		print("abrir")
	else:
		playback.travel("Criado mudo fechar")
		print("fechar")
	
