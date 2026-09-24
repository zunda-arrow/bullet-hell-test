class_name Game

extends Node2D

var energy = 3.0
var hp = 3
var enemy_hp = 1000
var last_played_card: String

var kunai = preload("res://cards/kunai.tres")
var bludgeon = preload("res://cards/bludgeon.tres")
var autoshields = preload("res://cards/autoshields.tres")

func _ready() -> void:
	%EnergyMeter.set_energy_amount(energy)
	%HealthMeter.set_hp(hp)
	%CardPicker.show_cards([kunai, bludgeon, autoshields])

func _process(delta: float) -> void:
	%EnergyMeter.set_energy_amount(energy)
	%EnemyHP.text = "EnemyHP: " + str(enemy_hp)
	%HealthMeter.set_hp(hp)

func _on_player_create_bullet(scene: PackedScene) -> void:
	var b = scene.instantiate()
	%Attacks.add_child(b)
	b.position = %Player.position

func _on_player_hit() -> void:
	hp -= 1

func _on_player_parry_landed(bullet: Area2D) -> void:
	bullet.queue_free()
	energy += 1

func _on_dragon_enemy_hit() -> void:
	energy += .05
	enemy_hp -= 3

func _on_card_picker_selection_picked(card: CardResource) -> void:
	energy -= card.energy
	%DragonEnemy.attack()
	last_played_card = card.name

	await get_tree().create_timer(5).timeout
	%CardPicker.show_cards([kunai, bludgeon, autoshields])

func _on_dragon_enemy_create_attack(attack: PackedScene) -> void:
	var a = attack.instantiate()
	%Attacks.add_child(a)
	a.position = %DragonEnemy.position
