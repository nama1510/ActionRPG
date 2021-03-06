extends InputHandler


func get_input_direction():
	var input_direction = Vector2()
	input_direction.x = int(Input.is_action_pressed("move_right")) - int(Input.is_action_pressed("move_left"))
	input_direction.y = int(Input.is_action_pressed("move_down")) - int(Input.is_action_pressed("move_up"))
	return input_direction

func is_jump_activated():
	return Input.is_action_pressed('jump')

func is_attack_activated():
	return Input.is_action_pressed('attack')

func is_damaged():
	return Input.is_action_pressed('simulate_damage')