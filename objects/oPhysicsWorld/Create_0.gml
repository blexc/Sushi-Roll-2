physics_world_create(0.1);
physics_world_gravity(0, 30);
physics_world_update_speed(room_speed * 2);
physics_world_update_iterations(30);
if (debug_mode) physics_world_draw_debug(-1);