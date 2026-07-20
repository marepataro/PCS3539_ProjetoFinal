class_name Interactable
extends StaticBody3D
#Gera um sinal da interação (permite as mensagens aparecerem na tela)
signal interacted(body)

@export var prompt_message = "Interact"
@export var prompt_action = "interact"

#Função que irá aparecer quando o objeto colidir com o InteractRay
func get_prompt():
	var key_name = ""
	for action in InputMap.action_get_events(prompt_action):
		if action is InputEventKey:
			key_name = OS.get_keycode_string(action.keycode)
	return prompt_message + "\n[" + key_name + "]" 
	
#Função que irá aparecer após a interação, emitir sinal
func interact(body):
	print ("Interacted")
	emit_signal("interacted", body)
# Called when the node enters the scene tree for the first time.


func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	pass
