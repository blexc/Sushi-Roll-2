/// @description update level_index

var _len = array_length(levels);
for (var i = 0; i < _len; i++)
{
	if (levels[i].room_name == room)
	{
		// you've entered a level room
		level_index = i;
		exit;
	}
}

// if you've made it here, you should NOT in a level room
update_cursor();