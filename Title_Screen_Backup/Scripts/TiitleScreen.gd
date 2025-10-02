extends Control

func _ready() -> void:
	$menu/StartButton.grab_focus()
	

	
	
func _on_start_button_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes/Games.tscn")
	


func _on_options_button_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes/Settings.tscn")
	


func _on_quit_button_pressed() -> void:
	get_tree().quit()
	
	
func _input(event):
	if event.is_action_pressed("ui_cancel"):
		get_tree().quit()
