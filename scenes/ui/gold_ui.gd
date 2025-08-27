class_name GoldUI
extends HBoxContainer

@export var run_stats: RunStats : set = set_run_stats

@onready var lable: Label = $Label


func _ready() -> void:
	lable.text = "0"
	

func set_run_stats(new_value: RunStats) -> void:
	run_stats = new_value
	run_stats.gold_changed.connect(_update_gold)
	_update_gold()
	

func _update_gold() -> void:
	lable.text = str(run_stats.gold)
