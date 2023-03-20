/// @description when a bullet hit a rock
obj_game.points += 50;
direction = random(360);//a full circle

instance_destroy(other);
//destroys the “other” instance, which is the bullet

effect_create_above(ef_explosion, x, y, 1, c_red);
//the number 1 means the size (medium); 2 = big

//conditionals
if sprite_index == spr_rock_big
{//verify if the sprite is big
	sprite_index = spr_rock_small;
	instance_copy(true);//copy the instance, so now are 2
}
else if instance_number(obj_rock) < 12
{
	sprite_index = spr_rock_big;
	x = -100;
	//if there is less than 12 rocks, creates on outside room
}
else
{//the rock is small and 12 rocks are inside the room
	instance_destroy();
}

