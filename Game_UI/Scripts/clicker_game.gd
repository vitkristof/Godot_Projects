class_name ClickerGame
extends Control


@export var label : Label

var something : int = 0;

func _ready() -> void:
	upd_label_txt()

func _on_button_pressed() -> void:
	create_something()
	upd_label_txt()

func create_something() -> void:
	something += 1;


func upd_label_txt() -> void:
	label.text = "Something: %s" %something
