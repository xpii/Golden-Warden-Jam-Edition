/// @description Insert description here
// You can write your code in this editor

if(mode == 0) {
	speed = max(0, speed-0.2);
	if(speed < 0.2) mode = 1;
}
else if(mode == 1) {
	direction = point_direction(x, y, 24, 48);
	speed = min(10, speed + 0.2);
}

else if(mode == 2) {
	if(y < -20) {
		x = irandom_range(0,room_width);
		mode = 3;
		speed = 1;
		direction = -90;
	}
}
else {
	speed = min(3, speed+0.02);
}

// 削除
if(mode != 3 && point_in_circle(x, y, 24, 48, 10)) {
	instance_destroy();
	oPlayer.coin++;
	audio_play_sound(snCoin,1,false);
}

if(mode == 3 && y > room_height) {
	instance_destroy();
	oPlayer.coin++;
}
