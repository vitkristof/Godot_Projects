class_name GeneratorGame
extends Control


@export var somethinglbl : Label
@export var nothinglbl : Label

@onready var somethingbtn : Button = $btns/somethingbtn
@onready var nothingbtn : Button = $btns/nothingbtn

@onready var timer : Timer = $Timer

@export var something : int = 0
@export var nothing : int = 0

var generator : String

func _ready() -> void:
	upd_label_txt()
	
func create_something() -> void:
	something += 1;
	upd_label_txt()
func create_nothing() -> void:
	nothing += 1;
	upd_label_txt()


func upd_label_txt() -> void:
	somethinglbl.text = "Something: %s" %something
	nothinglbl.text = "Nothing: %s" %nothing
	
func begin_generating_something() -> void:
	generator = "Something"
	if timer.is_stopped():
		timer.start()
	

func begin_generating_nothing() -> void:
	generator = "Nothing"
	if timer.is_stopped():
		timer.start()
	
func _on_somethingbtn_pressed() -> void:
	begin_generating_something()


func _on_nothingbtn_pressed() -> void:
	begin_generating_nothing()


func _on_timer_timeout() -> void:
	match generator:
		"Something" : create_something()
		"Nothing" : create_nothing()
	
