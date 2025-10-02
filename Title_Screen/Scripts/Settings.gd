extends Control

func _ready() -> void:
	$menu/Quit.grab_focus()
	
func _on_quit_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes/TitleScreen.tscn")
	
