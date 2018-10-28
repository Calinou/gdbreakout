# Copyright © 2018 Hugo Locurcio and contributors - MIT License
# See `LICENSE.md` included in the source distribution for details.

extends Control

export(NodePath) var game_path

onready var ScoreCounter = $Vitals/Score/Counter
onready var LivesCounter = $Vitals/Lives/Counter

func _on_score_changed(value):
	update_score(value)

func _on_lives_changed(value):
	update_lives(value)

func update_score(value):
	ScoreCounter.text = str(value)

func update_lives(value):
	LivesCounter.text = str(value)
