extends Panel

@onready var start_button = $Iniciar
@onready var sair = $Sair


func _ready():
	start_button.grab_focus()

func _process(_delta):
	if start_button.is_hovered():
		start_button.grab_focus()
	elif sair.is_hovered():
		sair.grab_focus()

func _on_iniciar_pressed():
	get_tree().change_scene_to_file("res://scenes/title_screen.tscn")

func _on_sair_pressed():
	get_tree().quit()
