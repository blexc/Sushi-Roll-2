/// @description draw arrow & invinsibility


if (can_display_debug()) 
{
	physics_draw_debug();
	var _alpha = 1;
	var _color = c_green;
	
	var _left = keyboard_check(ord("A"));
	var _right = keyboard_check(ord("D"));
	_x_dir = _right - _left;
	
	draw_sprite_ext(sArrow, 0, x, y, _x_dir, 1, 0, _color, _alpha);
}


if (sushi_invincible()) image_alpha = 0.5;
else					image_alpha = 1;

draw_self();