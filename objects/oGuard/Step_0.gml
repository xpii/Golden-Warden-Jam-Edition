/// @description

if(!instance_exists(follow)) instance_destroy();

else {
	if(follow.guard == false) image_speed = 1;
	x = follow.x;
	y = follow.y;
	image_alpha = follow.image_alpha;
}


