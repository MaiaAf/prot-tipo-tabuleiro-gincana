extends Control

@export var cor : Color
@export var nome_comvida : String
@export var zona : int = 1
@onready var check_missoes: VBoxContainer = $HBoxContainer/VScrollBar/missoes

var instancia_comvida : Comvida

func _ready() -> void:
	for i in check_missoes.get_children():
		if i is CheckBox:
			i.toggled.connect(_missao_cumprida)
	%ColorRect.color = cor
	instancia_comvida = get_tree().get_first_node_in_group(nome_comvida)


func _missao_cumprida(toggled : bool) -> void:
	if toggled:
		instancia_comvida.andar()
