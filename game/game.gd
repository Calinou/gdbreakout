# Copyright © 2018 Hugo Locurcio and contributors - MIT License
# See `LICENSE.md` included in the source distribution for details.

extends Node

signal lives_changed

var score = 0
var lives = 3

func _ready():
	emit_signal("score_changed", score)
	emit_signal("lives_changed", lives)

func _on_ball_fell():
	# TODO: Only remove one live if the last ball fell
	# (in case there are multiple balls)
	lives -= 1
	emit_signal("lives_changed", lives)
