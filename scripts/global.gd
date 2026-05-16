extends Node

const INSTANCIA_DIALOGO: PackedScene = preload("res://scenes/dialogo.tscn")

var dialogo: CanvasLayer
var dialogo_ativo: bool = false

func criar_dialogo(titulo: String, mensagem:String, nomes_botoes: Array[String], funcs_botoes: Array[Callable], node_atual: Node) -> void:
	dialogo = INSTANCIA_DIALOGO.instantiate()
	dialogo.titulo = titulo
	dialogo.mensagem = mensagem
	dialogo.nomes_botoes = nomes_botoes
	dialogo.funcs_botoes = funcs_botoes
	dialogo_ativo = true
	node_atual.add_child(dialogo)
	
func destruir_dialogo() -> void:
	dialogo_ativo = false
	dialogo.queue_free()
	pass
