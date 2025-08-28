class_name ExposedStatus
extends Status

var MODIFIER := 0.5


func apply_status(target: Node) -> void:
	
	var damage_effect := DamageEffect.new()
	damage_effect.amount = 12
	damage_effect.execute([target])
	
	status_applied.emit(self)
