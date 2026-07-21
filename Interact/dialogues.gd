extends CanvasLayer
var player = null

func _start_dialogue(id: String, body):
	$DialogueBox.start(id)
	body.set_physics_process(false)
	body.set_process_input(false)
	player = body
	var ray = body.get_node("Head/InteractRay")
	if ray:
		ray.dialogue_active = true

func _on_vaso_interacted(body):
	_start_dialogue("VASO", body)

func _on_quadro_interacted(body):
	_start_dialogue("QUADRO", body)

func _on_matriosca_interacted(body):
	_start_dialogue("MATRIOSCA", body)

func _on_perfume_interacted(body):
	_start_dialogue("PERFUME", body)

func _on_máquina_de_escrever_interacted(body):
	_start_dialogue("MAQUINA", body)

func _on_vestido_interacted(body):
	_start_dialogue("VESTIDO", body)

func _on_chave_interacted(body):
	_start_dialogue("CHAVE", body)

func _on_diário_interacted(body):
	_start_dialogue("DIARIO", body)

func _on_dialogue_box_dialogue_ended():
	player.set_physics_process(true)
	player.set_process_input(true)
	var ray = player.get_node("Head/InteractRay")
	player = null
	await get_tree().create_timer(0.3).timeout
	if ray:
		ray.dialogue_active = false
