extends Node2D


func _on_quit_pressed() -> void:
	
	get_tree().change_scene_to_file("res://Scenes/TitleScreen.tscn")
	




func _on_games_2_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes/Games_2.tscn")
	pass # Replace with function body.


func _on_game_1_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes/Game_1.tscn")
	pass # Replace with function body.
