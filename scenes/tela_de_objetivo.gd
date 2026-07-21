extends Node2D
@onready var animated_sprite = $TextureProgressBar/spin
func _ready():
      animated_sprite.play("spin")
      await get_tree().create_timer(5.0).timeout
      get_tree().change_scene_to_file("res://scenes/cena_principal.tscn")

func _on_botao_começar_pressed():
    get_tree().change_scene_to_file("res://scenes/Tela_de_objetivo.tscn")
    animated_sprite.play("$TextureProgressBar/spin")
