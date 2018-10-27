# gdbreakout: Ball controller
#
# Copyright © 2018 Hugo Locurcio and contributors - MIT License
# See `LICENSE.md` included in the source distribution for details.

extends KinematicBody2D

var motion = Vector2()

# The starting ball speed
var base_speed = 210

# Speed factor on every bounce
var speed_factor = 1.01

func _draw():
	draw_circle(Vector2(), 10.0, Color(0.9, 0.9, 0.9, 1))

func _ready():
	motion = Vector2(0, -base_speed)

func _physics_process(delta):
	var collision = move_and_collide(motion*delta)

	if collision:
		motion = motion.bounce(collision.normal)
		motion *= speed_factor
