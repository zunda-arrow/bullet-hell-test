class_name CardResource

extends Resource

enum Type {
	Offence,
	Defence,
	Skill,
}

@export var type: Type
@export var name: String
@export var energy: int
@export var description: String
