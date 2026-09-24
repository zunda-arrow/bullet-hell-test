extends Node2D

signal selection_picked(number: int)


func show_cards(cards):
	%Card1.resource = cards[0]
	%Card2.resource = cards[1]
	%Card3.resource = cards[2]
	show()

func _process(delta: float) -> void:
	if not visible:
		return

	if Input.is_action_just_pressed("play_card_one"):
		selection_picked.emit(%Card1.resource)
		hide()
	if Input.is_action_just_pressed("play_card_two"):
		selection_picked.emit(%Card2.resource)
		hide()
	if Input.is_action_just_pressed("play_card_three"):
		selection_picked.emit(%Card3.resource)
		hide()
	
