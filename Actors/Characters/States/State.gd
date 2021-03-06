# Base class all states inherit from
# Stores a ref to the FSM node, and the STATE_IDS
extends Node


class_name State


signal finished(next_state_name)

enum STATE_IDS { NULL, IDLE, MOVE, ATTACK, BUMP }


# Initialize the state. E.g. change the animation
func enter(host):
	pass


# Clean up the state. Reinitialize values like a timer
func exit(host):
	pass


func handle_input(host, event):
	pass


func update(host, delta):
	pass


func _on_AnimationPlayer_animation_finished(anim_name):
	pass