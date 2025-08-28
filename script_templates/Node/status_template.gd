class_name CustomStatus
extends Status

var member_var := 0


func _initialize_status(target: Node) -> void:
	# init status
	pass


func apply_status(target: Node) -> void:
	
	status_applied.emit(self)
	pass
