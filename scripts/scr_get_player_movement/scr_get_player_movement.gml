///scr_get_player_movement

up_key = keyboard_check(ord("W")) and place_free(x, y - collisionSpeed);
down_key = keyboard_check(ord("S")) and place_free(x, y + collisionSpeed);
right_key = keyboard_check(ord("D")) and place_free(x + collisionSpeed, y);
left_key = keyboard_check(ord("A")) and place_free(x - collisionSpeed, y);

if(up_key) {
	y= y - walkSpeed;
	//y += walkSpeed;
	image_speed= walkSpeed / 3;
	sprite_index = sprSarahWalkUp;
}

if(left_key) {
	x= x - walkSpeed;
	image_speed= walkSpeed / 3;
	sprite_index = sprSarahWalkLeft;
}

if(down_key) {
	y= y + walkSpeed;
	image_speed= walkSpeed / 3;
	sprite_index = sprSarahWalkDown;
}


if(right_key) {
	x= x + walkSpeed;
	image_speed= walkSpeed / 3;
	sprite_index = sprSarahWalkRight;
}


if(keyboard_check(vk_nokey)){
	image_speed=0;
	image_index=0;
	walkSpeed=3.5;
}

if(keyboard_check(vk_shift)){
	walkSpeed= 7;
	}else{
	walkSpeed= 3.5;
}