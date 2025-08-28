extends Card

@export var optional_sount: AudioStream


func apply_effects(targets: Array[Node], _modifiers: ModifierHandler) -> void:
	print("Template card has been played!")
	print("Targets: %s" % targets)
