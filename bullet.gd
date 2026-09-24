extends Node2D

var SPEED = 1000

func _process(delta: float) -> void:
	position.y -= delta * SPEED
