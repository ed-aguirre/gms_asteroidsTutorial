/// @description when player collides with a rock
effect_create_above(ef_firework, x, y, 2, c_yellow);

instance_destroy();

obj_game.alarm[0] = 120;
//running alarm 0, in 120 frames (2 sec)
///Why didn’t we create the alarm in the player object?
//
//Because we’re destroying the player instance. 
//You can’t run alarms in an instance that doesn’t exist.