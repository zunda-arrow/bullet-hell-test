extends Node

class Weapon:
	func on_tick(game: Game):
		pass
		
	func on_enemy_turn_start(game: Game):
		pass
	
	func on_enemy_turn_end(game: Game):
		pass

class Autoshields extends Weapon:
	pass

class Blugeon extends Weapon:
	pass

class Kunai extends Weapon:
	pass
