/// @desc inits all needed obj's for a level

// update the current level struct
var _l;
with (oGame) _l = levels[diff_index][level_index];
level_struct = _l;

state = LEVEL.PANNING;
ui_alpha_start = 3;
ui_alpha = ui_alpha_start; // also text fade duration in seconds

instance_create_layer(0, 0, "Instances", oPhysicsWorld);

// create box around sushi
var _inst, _sushi = sushi_cur(), _w_half, _h_half;
_w_half = _sushi.sprite_width / 2;
_h_half = _sushi.sprite_height / 2;

// top
_inst = instance_create_layer(_sushi.x, _sushi.y - _h_half - 1, "Instances", oInvisibleSushiHolder);
// bottom
_inst = instance_create_layer(_sushi.x, _sushi.y + _h_half + 1, "Instances", oInvisibleSushiHolder);
// left
_inst = instance_create_layer(_sushi.x -_w_half - 1, _sushi.y, "Instances", oInvisibleSushiHolder);
_inst.phy_rotation = 90;
// right
_inst = instance_create_layer(_sushi.x +_w_half + 1, _sushi.y, "Instances", oInvisibleSushiHolder);
_inst.phy_rotation = 90;

window_set_cursor(cr_none);