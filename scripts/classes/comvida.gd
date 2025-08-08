class_name Comvida
extends Node2D

@export var nome_comvida : String

func _ready() -> void:
	add_to_group(nome_comvida)

func andar() -> void:
	var tween = create_tween().set_trans(Tween.TRANS_BOUNCE)
	tween.tween_property(self, "position", position + Vector2(128, - 512 ), 1)
	#tween.tween_property(self, "scale", 3.5, 0.5)
	#tween.chain().tween_property(self, "scale", 1, 0.5)
