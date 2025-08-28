extends Card

@export var optional_sount: AudioStream


func get_default_tooltip() -> String:
	return tooltip_text
	

func get_updated_tooltip(_player_modifiers: ModifierHandler, _enemy_modifiers: ModifierHandler) -> String:
	return tooltip_text


func apply_effects(targets: Array[Node], _modifiers: ModifierHandler) -> void:
	print("Template card has been played!")
	print("Targets: %s" % targets)
