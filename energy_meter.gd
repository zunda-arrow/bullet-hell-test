extends Node2D

func _ready() -> void:
	set_energy_amount(0)

func set_energy_amount(value: float):
	var full_energy = int(value)
	
	var y = (1 - (value - full_energy)) * 96
	
	if value >= 5:
		$e1.position.y = 0
		$e2.position.y = 0
		$e3.position.y = 0
		$e4.position.y = 0
		$e5.position.y = 0
	elif value >= 4:
		$e1.position.y = 0
		$e2.position.y = 0
		$e3.position.y = 0
		$e4.position.y = 0
		$e5.position.y = y
	elif value >= 3:
		$e1.position.y = 0
		$e2.position.y = 0
		$e3.position.y = 0
		$e4.position.y = y
		$e5.position.y = 96
	elif value >= 1:
		$e1.position.y = 0
		$e2.position.y = y
		$e3.position.y = 96
		$e4.position.y = 96
		$e5.position.y = 96
	else:
		$e1.position.y = y
		$e2.position.y = 96
		$e3.position.y = 96
		$e4.position.y = 96
		$e5.position.y = 96


	
	
	
