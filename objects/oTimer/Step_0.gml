/// @description decrement timer and check if time is up

if (!is_level_complete())
{
	level_timer = max(0, level_timer - 1);
	if (alarm[0] == -1  && level_timer == 0)
	{
		level_timer = 0;
		alarm[0] = room_speed * 1;
	}
}