/// @description Insert description here
// You can write your code in this editor
if keyboard_check(vk_up)
{
	motion_add(image_angle, 0.1);
	//the var 'image_angle' stores the angle of instance's rotation,
	//we have to rotate it
}

if keyboard_check(vk_left)
{
	image_angle += 4;
}

if keyboard_check(vk_right)
{
	image_angle -= 4;
}

move_wrap(true, true, 0);

if keyboard_check_pressed(vk_space)
{
	instance_create_layer(x, y, "Instances", obj_bullet);
	//every time space is pressed, create a bullet instance
}
