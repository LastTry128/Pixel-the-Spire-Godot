class_name TemplateEffect
extends Effect

var member_var := 0


func execute(targets: Array[Node]) -> void:
	print("Template Effect targets them:" % targets)
	print("It does: %s something" % member_var)
