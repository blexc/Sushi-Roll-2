// select.. notice NOT pressed
function input_one(){
	var _input = mouse_check_button(mb_left) || gamepad_button_check(global.device_index, gp_face1);
	return _input;
}

function input_one_pressed(){
	var _input = mouse_check_button_pressed(mb_left) || gamepad_button_check_pressed(global.device_index, gp_face1);
	return _input;
}

function input_x_axis(){
	if (input_controller_active())
	{
		return gamepad_axis_value(global.device_index, gp_axislh);
	}
	
	var _normalized_input = 0;
	var _ranged_input = 0;
	
	with (oLevelController)
	{
		_ranged_input = input_x_mouse_clamp(w_min, w_max);
		_normalized_input = (2 * (_ranged_input - w_min) / (w_max - w_min)) - 1;
	}
	
	return _normalized_input;
}

function input_controller_to_mouse_x()
{
	return ((input_x_axis() + 1) * (w_max - w_min) / 2) + w_min;	
}

function input_x_mouse_clamp(_min, _max)
{
	return clamp(window_mouse_get_x(), _min, _max);	
}

function input_controller_active()
{
	return global.using_controller && gamepad_is_connected(global.device_index);
}