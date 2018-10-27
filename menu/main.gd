# gdbreakout: Main menu
#
# Copyright © 2018 Hugo Locurcio and contributors - MIT License
# See `LICENSE.md` included in the source distribution for details.

extends Control

func _ready():
	pass

func _on_Play_pressed():
	get_tree().change_scene("res://game/game.tscn")

func _on_Quit_pressed():
	get_tree().quit()
