extends Card

const TRUE_STRENGTH_FORM_STATUS = preload("res://status/true_strength_form.tres")

func apply_effects(targets: Array[Node], _modifiers: ModifierHandler) -> void:
	var status_eefect := StatusEffect.new()
	var true_strength := TRUE_STRENGTH_FORM_STATUS.duplicate()
	status_eefect.status = true_strength
	status_eefect.execute(targets)
