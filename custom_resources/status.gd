class_name Status
extends Resource

signal status_applied(status: Status)
signal status_changed

enum Type {Start_Of_Turn, End_Of_Turn, Event_Based}
enum StackType {None, Intensity, Duration}

@export_group("Status Data")
@export var id: String
@export var type: Type
@export var stack_type: StackType
@export var can_expire: bool
@export var duration: int : set = set_duration
@export var stacks: int : set = set_stacks

@export_group("Status Visuals")
@export var icon: Texture
@export_multiline var tooltip: String


func initialize_status(_target: Node) -> void:
	pass


func apply_status(_target: Node) -> void:
	status_applied.emit(self)


func get_tooltip() -> String:
	return tooltip


func set_duration(new_duration: int) -> void:
	duration = new_duration
	status_changed.emit()


func set_stacks(new_stacks: int) -> void:
	stacks = new_stacks
	status_changed.emit()
