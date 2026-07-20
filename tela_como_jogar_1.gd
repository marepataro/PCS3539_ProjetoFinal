extends Node2D

func _on_continuar_como_jogar_1_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/tela_como_jogar_2.tscn")
