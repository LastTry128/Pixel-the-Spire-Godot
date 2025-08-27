extends Card


func apply_effects(targets: Array[Node]) -> void:
	print("Template card has been played!")
	print("Targets: %s" % targets)
