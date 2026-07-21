extends RayCast3D

@onready var prompt = $Prompt
var dialogue_active := false

func _ready():
	add_exception(owner)


func _physics_process(_delta):
	prompt.text = ""
	if dialogue_active:
		return
	if is_colliding():
		var detected = get_collider()
		if detected is Interactable:
			prompt.text = detected.get_prompt()
			if Input.is_action_just_pressed(detected.prompt_action):
				detected.interact(owner)
