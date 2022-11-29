/// @description Insert description here
// You can write your code in this editor

if(mode == 0) {
	speed = max(0, speed-0.2);
	if(speed < 0.2) mode = 1;
}
else {
	direction = point_direction(x, y, 24, 32);
	speed = min(10, speed + 0.2);
}

// 削除
if(point_in_circle(x, y, 24, 32, 10)) {
	instance_destroy();
	oPlayer.coin++;
}

