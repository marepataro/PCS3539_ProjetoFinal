extends CanvasLayer
var player = null

func _on_vaso_interacted(body):
	$DialogueBox.start("VASO")
	body.set_physics_process(false)
	body.set_process_input(false)
	player = body

func _on_quadro_interacted(body):
	$DialogueBox.start("QUADRO")
	body.set_physics_process(false)
	body.set_process_input(false)
	player = body

func _on_matriosca_interacted(body):
	$DialogueBox.start("MATRIOSCA")
	body.set_physics_process(false)
	body.set_process_input(false)
	player = body

func _on_perfume_interacted(body):
	$DialogueBox.start("PERFUME")
	body.set_physics_process(false)
	body.set_process_input(false)
	player = body

func _on_máquina_de_escrever_interacted(body):
	$DialogueBox.start("MAQUINA")
	body.set_physics_process(false)
	body.set_process_input(false)
	player = body

func _on_vestido_interacted(body):
	$DialogueBox.start("VESTIDO")
	body.set_physics_process(false)
	body.set_process_input(false)
	player = body

func _on_chave_interacted(body):
	$DialogueBox.start("CHAVE")
	body.set_physics_process(false)
	body.set_process_input(false)
	player = body

func _on_diário_interacted(body):
	$DialogueBox.start("DIARIO")
	body.set_physics_process(false)
	body.set_process_input(false)
	player = body

func _on_dialogue_box_dialogue_ended():
	player.set_physics_process(true)
	player.set_process_input(true)
	player = null
