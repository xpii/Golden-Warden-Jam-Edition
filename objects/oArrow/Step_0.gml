/// @description

if(!instance_exists(follow)) instance_destroy();
image_xscale = dir;

if(dir == RIGHT) x += 16;
else x -= 16;

if(x > room_width || x < 0) {
	instance_destroy();	
}

if(place_meeting(x,y,target)) {
	audio_play_sound(snAtkBowHit,1,false);
	damage(instance_nearest(x,y,target), 1);
	instance_destroy();
}


