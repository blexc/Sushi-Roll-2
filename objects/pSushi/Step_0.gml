/// @description control the sushi x and spin

if (level_is_state(LEVEL.PAUSED)) exit;

var _x_dir;

if (global.using_controller)
	_x_dir = gamepad_axis_value(global.device_index, gp_axislh);
else
{
	var _left = keyboard_check(ord("A"));
	var _right = keyboard_check(ord("D"));
	_x_dir = _right - _left;
}

// control the sushi
physics_apply_force(x, y, _x_dir * force, 0);
physics_apply_torque(_x_dir * torque);

if (place_meeting(x, y, oWaterBody))
{
	var _water = instance_place(x, y, oWaterBody);
	water_cause_wave(_water, x);
	phy_linear_damping = 5;
}
else
{
	phy_linear_damping = linear_damp;
}

jump_buffer = max(0, jump_buffer - 1);
add_to_debug_map("jump_buffer: " + string(jump_buffer));