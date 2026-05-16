extends Node2D

func _ready() -> void:
	Global.criar_dialogo(
		"Bem vindo!",
		"Aperte as teclas direcionais para movimentar no mapa. Para sair, aperte Alt + F4.",
		["Ok."],
		[func(): Global.destruir_dialogo()],
		$"."
	)
	pass

func _process(_delta: float) -> void:
	pass
