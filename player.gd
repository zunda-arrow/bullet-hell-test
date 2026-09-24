extends Node2D

signal create_bullet(scene: PackedScene)
signal hit
signal parry_landed(bullet: Area2D)

var bullet = preload("res://bullet.tscn")

const SPEED = 1000

func _process(delta: float) -> void:
	var dir_x = int(Input.is_action_pressed("right")) - int(Input.is_action_pressed("left"))
	var dir_y = int(Input.is_action_pressed("down")) - int(Input.is_action_pressed("up"))
	position += + delta * SPEED * Vector2(dir_x, dir_y)

	if Input.is_action_just_pressed("parry"):
		for a in %ParryHitbox.get_overlapping_areas():
			if a.is_in_group("parryable"):
				print("HERE")
				parry_landed.emit(a)


func shoot():
	create_bullet.emit(bullet)


func _on_area_2d_area_entered(area: Area2D) -> void:
	if area.is_in_group("enemy_attack"):
		hit.emit()
