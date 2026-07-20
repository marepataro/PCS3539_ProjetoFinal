extends Node2D

func _on_botao_começar_pressed():
	get_tree().change_scene_to_file("res://scenes/Tela_de_objetivo.tscn")

func _on_botao_como_jogar_pressed():
	get_tree().change_scene_to_file("res://scenes/tela_como_jogar_1.tscn")

func _on_botao_creditos_pressed():
	get_tree().change_scene_to_file("res://scenes/Tela_creditos.tscn")
