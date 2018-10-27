# Copyright © 2018 Hugo Locurcio and contributors - MIT License
# See `LICENSE.md` included in the source distribution for details.

extends StaticBody2D
class_name Walls

signal ball_fell

func _on_DeathArea_body_entered(body):
	if body is Ball:
		emit_signal("ball_fell")
