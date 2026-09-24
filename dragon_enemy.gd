extends Node2D

var bullet_a = preload("res://enemy_attacks/attack_pattern1.tscn")

signal hit()
signal create_attack(attack: PackedScene)

func attack():
	create_attack.emit(bullet_a)

func _on_area_2d_area_entered(area: Area2D) -> void:
	if area.is_in_group("player_attack"):
		hit.emit()
