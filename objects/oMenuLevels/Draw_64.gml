/// @description draw selected level info

var _w = display_get_gui_width();
var _h = display_get_gui_height();

// print currently selected level's info
if ( alarm[1] != -1 || 
	(menu_cursor != noone && menu_cursor.object_index == oButtonBack) )
	exit;

var _str = "";
with (oGame)
{
	// the level you're hovering over
	var _level = levels[other.difficulty][other.menu_cursor.btag];
	
	// show if you've beaten the level before
	if (_level.has_beaten) _str += "*";
	_str += string(_level.level_name) + "\n";
	_str += "Time Requirement: " + string(_level.time_sec_req) + " seconds\n";
	_str += "Best Time: " + string(mus2sec(_level.best_time_mus)) + " seconds\n";
	_str += "High Score: " + string(_level.best_score) + "\n";
	_str += "Deaths: " + string(_level.death_counter) + "\n";
}

set_draw(c_black, 1, fnUI, fa_center, fa_center);
draw_text_with_outline(_w * 0.75, _h / 2, _str);