class_name MuscleStatus
extends Status


func _initialize_status(target: Node) -> void:
	status_changed.connect(_on_status_changed)
	_on_status_changed()


func _on_status_changed() -> void:
	print("hello %s" % stacks)
