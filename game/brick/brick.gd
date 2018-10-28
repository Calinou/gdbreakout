# Copyright © 2018 Hugo Locurcio and contributors - MIT License
# See `LICENSE.md` included in the source distribution for details.

extends StaticBody2D
class_name Brick

signal brick_destroyed

func _ready():
	connect("brick_destroyed", $"/root/Game", "_on_brick_destroyed")

func destroy():
	emit_signal("brick_destroyed")
	queue_free()
