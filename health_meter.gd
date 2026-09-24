extends Node2D

func set_hp(hp: int):
	if hp == 0:
		$heart1.hide()
		$heart2.hide()
		$heart3.hide()
	if hp == 1:
		$heart1.show()
		$heart2.hide()
		$heart3.hide()
	if hp == 2:
		$heart1.show()
		$heart2.show()
		$heart3.hide()
	if hp == 3:
		$heart1.show()
		$heart2.show()
		$heart3.show()
