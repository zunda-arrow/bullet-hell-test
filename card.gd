@tool

extends Node2D

var resource: CardResource:
	set(v):
		resource = v
		update()
	get():
		return resource
	
func update():
	%Name.text = resource.name
	%Description.text = resource.description
	%Energy.text = str(resource.energy)
	
	%offence.hide()
	%defence.hide()
	%other.hide()
	
	if resource.type == CardResource.Type.Offence:
		%offence.show()
	if resource.type == CardResource.Type.Defence:
		%defence.show()
	if resource.type == CardResource.Type.Skill:
		%other.show()
