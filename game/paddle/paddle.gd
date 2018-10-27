# Copyright © 2018 Hugo Locurcio and contributors - MIT License
# See `LICENSE.md` included in the source distribution for details.

extends KinematicBody2D
class_name Paddle

func _ready():
	pass

func _input(event):
	if event is InputEventMouseMotion:
		position.x = event.position.x
