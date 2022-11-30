/// @description 

if(!instance_exists(follow)) instance_destroy();

else {
	x = follow.x;
	y = follow.y;
	image_alpha = follow.image_alpha;
	current_depth = follow.num;
}

if(lastTresure) {
	with(instance_create_layer(x,y-4,"Mobs",oCoin)) {
		mode = 2;

		speed = 5;
		direction = random_range(65,115);
	}
	
	if(returnTitle && mouse_check_button_pressed(mb_left)) {
		oMain.level = 0;
		room_goto(rTitle);
		//game_restart();
	}
}
